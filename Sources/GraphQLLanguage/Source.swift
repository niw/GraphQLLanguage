//
//  Source.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import Antlr4

public struct Source {
    public var string: String
    public var name: String?

    public init(string: String) {
        self.string = string
    }

    public init(atPath path: String, encoding: String.Encoding = .utf8) throws {
        name = path
        string = try String(contentsOfFile: path, encoding: encoding)
    }

    func inputStream() -> ANTLRInputStream {
        let unicodeScalars = string.unicodeScalars
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
    public var sourceUnicodeScalars: String.UnicodeScalarView.SubSequence? {
        guard let parserRuleContext = buildLanguageContext?.parserRuleContext,
              let source = parseBuildContext?.source,
              let startOffset = parserRuleContext.getStart()?.getStartIndex(),
              let endOffset = parserRuleContext.getStop()?.getStopIndex()
        else {
            return nil
        }

        let unicodeScalars = source.string.unicodeScalars
        let startIndex = unicodeScalars.index(unicodeScalars.startIndex, offsetBy: startOffset)
        let endIndex = unicodeScalars.index(unicodeScalars.startIndex, offsetBy: endOffset)
        return unicodeScalars[startIndex...endIndex]
    }
}
