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
    static var configuration = CommandConfiguration(
        abstract: "An example command-line tool for using GraphQLLanguage package",
        subcommands: [
            Parse.self,
            RemoveDirectives.self],
        defaultSubcommand: Parse.self)

    struct CommonOptions: ParsableArguments {
        @Option(name: .shortAndLong, help: "Path to the GraphQL file")
        var file: String
    }
}

extension Command {
    struct Parse: ParsableCommand {
        static var configuration = CommandConfiguration(
            abstract: "Parse given GraphQL file and print each defintion")

        @OptionGroup
        var options: CommonOptions

        mutating func run() throws {
            let source = try Source(atPath: options.file)
            let document = try Document.parsing(source)
            for definition in document.definitions {
                print(definition)
            }
        }
    }

    struct RemoveDirectives: ParsableCommand {
        static var configuration = CommandConfiguration(
            abstract: "Rewrite given GraphQL file and print the one without any directives")

        @OptionGroup
        var options: CommonOptions

        mutating func run() throws {
            let source = try Source(atPath: options.file)
            let document = try Document.parsing(source)
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
