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
    convenience init(inputStream: ANTLRInputStream) throws {
        let lexer = BailErrorGraphQLLexer(inputStream)
        let tokens = CommonTokenStream(lexer)

        try self.init(tokens)

        removeParseListeners()
        removeErrorListeners()
        setErrorHandler(BailErrorStrategy())
    }
}

extension Document {
    public static func parsing(_ source: Source) throws -> Self {
        // The lifetime of `inputStream` must be longer than `build()` call here or
        // any calls that reads characters such as `getText()` may fail.
        let inputStream = source.inputStream()
        // TODO: Catch error and encapsulate it to improve error description
        let context = try GraphQLParser(inputStream: inputStream).document()
        return try context.build()
    }
}
