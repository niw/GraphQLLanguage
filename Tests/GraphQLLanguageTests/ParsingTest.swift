//
//  ParsingTest.swift
//  GraphQLLanguageTests
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import XCTest
@testable import GraphQLLanguage

final class ParsingTest: XCTestCase {
    func testDocumentParsing() {
        let source = Source(string: "type Cat")

        XCTAssertNoThrow(try Document.parsing(source))
    }

    func testUnexpectedContext() {
        let source = Source(string: "query { cat(age: \(Int(Int32.max) + 1)) }")

        XCTAssertThrowsError(try Document.parsing(source))
    }
}
