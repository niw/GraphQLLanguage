//
//  Source.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import Antlr4

public struct Source {
    public let string: String
    let unicodeScalars: [UnicodeScalar]

    public var name: String?

    public init(string: String) {
        self.string = string
        self.unicodeScalars = Array(string.unicodeScalars)
    }

    public init(atPath path: String, encoding: String.Encoding = .utf8) throws {
        self.init(string: try String(contentsOfFile: path, encoding: encoding))
    }

    func inputStream() -> ANTLRInputStream {
        let inputStream = ANTLRInputStream(unicodeScalars, unicodeScalars.count)
        inputStream.name = name
        return inputStream
    }
}

extension Document {
    public var source: Source? {
        parseBuildContext?.source
    }
}

extension LanguageNode {
    var sourceRange: Range<Array<UnicodeScalar>.Index>? {
        guard let parserRuleContext = buildLanguageContext?.parserRuleContext,
              let startOffset = parserRuleContext.getStart()?.getStartIndex(),
              let endOffset = parserRuleContext.getStop()?.getStopIndex()
        else {
            return nil
        }
        return startOffset..<endOffset + 1
    }

    public var sourceString: String? {
        guard let source = parseBuildContext?.source, let range = sourceRange else {
            return nil
        }

        return String(source.unicodeScalars[range])
    }
}
