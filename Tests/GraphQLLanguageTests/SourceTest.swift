//
//  SourceTest.swift
//  GraphQLLanguageTests
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import XCTest
@testable import GraphQLLanguage

final class SourceTest: XCTestCase {
    func testSourceUnicodeScalars() throws {
        let source = Source(string: "type Cat @meow")
        let sourceUnicodeScalars = source.unicodeScalars
        let document = try Document.parsing(source)

        let objectTypeDefinition = try XCTUnwrap(document.definitions.first as? ObjectTypeDefinition)
        let objectTypeDefinitionRange = try XCTUnwrap(objectTypeDefinition.sourceRange)
        let objectTypeDefinitionString = try XCTUnwrap(objectTypeDefinition.sourceString)

        XCTAssertEqual(objectTypeDefinitionRange.startIndex, sourceUnicodeScalars.startIndex)
        XCTAssertEqual(objectTypeDefinitionRange.endIndex, sourceUnicodeScalars.endIndex)
        XCTAssertEqual(objectTypeDefinitionString, "type Cat @meow")

        let directive = try XCTUnwrap(objectTypeDefinition.directives?.first)
        let directiveRange = try XCTUnwrap(directive.sourceRange)
        let directiveString = try XCTUnwrap(directive.sourceString)

        XCTAssertEqual(directiveRange.startIndex, sourceUnicodeScalars.index(sourceUnicodeScalars.startIndex, offsetBy: 9))
        XCTAssertEqual(directiveRange.endIndex, sourceUnicodeScalars.endIndex)
        XCTAssertEqual(directiveString, "@meow")
    }
}
