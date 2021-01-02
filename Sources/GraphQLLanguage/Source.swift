//
//  Source.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import Antlr4

public struct Source {
    private var string: String
    private var name: String?

    public init(string: String) {
        self.string = string
    }

    public init(atPath path: String, encoding: String.Encoding = .utf8) throws {
        name = path
        string = try String(contentsOfFile: path, encoding: encoding)
    }

    func inputStream() -> ANTLRInputStream {
        let characters = Array(string)
        let inputStream = ANTLRInputStream(characters, characters.count)
        inputStream.name = name
        return inputStream
    }
}
