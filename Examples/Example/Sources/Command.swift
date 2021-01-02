//
//  Command.swift
//  Example
//
//  Created by Yoshimasa Niwa on 12/24/20.
//

import ArgumentParser
import Foundation
import GraphQLLanguage

@main
struct Command: ParsableCommand {
    @Option(name: .shortAndLong, help: "Path to the GraphQL file")
    var file: String

    mutating func run() throws {
        let source = try Source(atPath: file)
        let document = try Document.parsing(source)
        print(document)
    }
}
