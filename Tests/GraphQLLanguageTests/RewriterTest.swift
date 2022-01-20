//
//  RewriterTest.swift
//  GraphQLLanguageTests
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import XCTest
@testable import GraphQLLanguage

final class RewriterTest: XCTestCase {
    func testRewriteDocument() throws {
        let source = Source(string: "type Cat @meow { cat: Cat @meow }")
        let document = try Document.parsing(source)

        let result = try document.rewrite { rewritable in
            switch rewritable {
            case is Directive:
                return "@meowmeow"
            default:
                return nil
            }
        }

        XCTAssertEqual(result, "type Cat @meowmeow { cat: Cat @meowmeow }")
    }

    func testRewriteDocumentWithoutRewritings() throws {
        let source = Source(string: "type Cat")
        let document = try Document.parsing(source)

        let result = try document.rewrite { _ in
            return nil
        }

        XCTAssertEqual(result, source.string)
    }

    func testRewriteDocumentWithConflictedRewritings() throws {
        let source = Source(string: "type Cat")
        let document = try Document.parsing(source)

        XCTAssertThrowsError(try document.rewrite { _ in return "rewriting" })
    }

    func testRewriteDocumentWithRewritingEntireDocument() throws {
        let source = Source(string: "type Cat")
        let document = try Document.parsing(source)

        let result = try document.rewrite { rewritable in
            switch rewritable {
            case is Document:
                return "meow"
            default:
                return nil
            }
        }

        XCTAssertEqual(result, "meow")
    }

    func testThrowingRewriter() throws {
        let source = Source(string: "type Cat")
        let document = try Document.parsing(source)

        enum Foo: Error {
            case bar
        }

        do {
            _ = try document.rewrite { _ in
                throw Foo.bar
            }
            XCTFail("Expected exception")
        } catch Foo.bar {
            // Pass
        } catch {
            XCTFail("Expected Foo.bar, got \(error)")
        }
    }
}
