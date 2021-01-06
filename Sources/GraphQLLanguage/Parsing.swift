//
//  Parsing.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import Antlr4

private class BailErrorGraphQLLexer: GraphQLLexer {
    override func recover(_ e: LexerNoViableAltException) throws {
        throw ANTLRException.recognition(e: e)
    }
}

extension GraphQLParser {
    convenience init(_ inputStream: ANTLRInputStream) throws {
        let lexer = BailErrorGraphQLLexer(inputStream)
        let tokens = CommonTokenStream(lexer)

        try self.init(tokens)

        removeParseListeners()
        removeErrorListeners()
        setErrorHandler(BailErrorStrategy())
    }
}

class ParseBuildContext: BuildContext {
    let source: Source
    let parser: GraphQLParser

    init(source: Source, parser: GraphQLParser) {
        self.source = source
        self.parser = parser
    }
}

extension LanguageNode {
    var parseBuildContext: ParseBuildContext? {
        buildLanguageContext?.buildContext as? ParseBuildContext
    }
}

extension Document {
    public static func parsing(_ source: Source) throws -> Self {
        let parser = try GraphQLParser(source.inputStream())
        let document = try parser.document()
        return try document.build(with: ParseBuildContext(source: source, parser: parser))
    }
}
