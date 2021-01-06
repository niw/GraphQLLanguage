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

    enum Action: EnumerableFlag {
        case parse
        case removeDirectives

        static func help(for value: Command.Action) -> ArgumentHelp? {
            switch value {
            case .parse:
                return "Parse given GraphQL file and print each defintion"
            case .removeDirectives:
                return "Rewrite given GraphQL file and print the one without any directives"
            }
        }
    }

    @Flag(help: "Action for the GraphQL file")
    var action: Action

    mutating func run() throws {
        let source = try Source(atPath: file)
        let document = try Document.parsing(source)

        switch action {
        case .parse:
            for definition in document.definitions {
                print(definition)
            }
        case .removeDirectives:
            let result = try document.rewrite { rewritable in
                switch rewritable {
                case is Directive:
                    return ""
                default:
                    return nil
                }
            }
            print(result)
        }
    }
}
