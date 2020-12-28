//
//  Loader.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import Antlr4

extension Document {
    private class BailErrorGraphQLLexer: GraphQLLexer {
        override func recover(_ e: LexerNoViableAltException) throws {
            throw ANTLRException.recognition(e: e)
        }
    }

    public static func load(filePath: String) throws -> Document {
        // We should retain `input` as same lifetime as document or lost access to the source text.
        let input = try ANTLRFileStream(filePath, String.Encoding.utf8)

        let lexer = BailErrorGraphQLLexer(input)

        let tokens = CommonTokenStream(lexer)

        let parser = try GraphQLParser(tokens)
        parser.removeParseListeners()
        parser.removeErrorListeners()
        parser.setErrorHandler(BailErrorStrategy())

        return try parser.document().build()
    }
}
