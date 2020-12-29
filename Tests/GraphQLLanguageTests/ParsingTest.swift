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
        XCTAssertNoThrow {
            _ = try Document.parsing(Source(string: "type Cat"))
        }
    }
}
