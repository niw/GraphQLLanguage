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
        let sourceUnicodeScalars = source.string.unicodeScalars
        let document = try Document.parsing(source)

        let objectTypeDefinition = try XCTUnwrap(document.definitions.first as? ObjectTypeDefinition)
        let objectTypeDefinitionSubSequence = try XCTUnwrap(objectTypeDefinition.sourceUnicodeScalars)

        XCTAssertEqual(objectTypeDefinitionSubSequence.startIndex, sourceUnicodeScalars.startIndex)
        XCTAssertEqual(objectTypeDefinitionSubSequence.endIndex, sourceUnicodeScalars.endIndex)
        XCTAssertEqual(String(objectTypeDefinitionSubSequence), "type Cat @meow")

        let directive = try XCTUnwrap(objectTypeDefinition.directives?.first)
        let directiveSubSequence = try XCTUnwrap(directive.sourceUnicodeScalars)

        XCTAssertEqual(directiveSubSequence.startIndex, sourceUnicodeScalars.index(sourceUnicodeScalars.startIndex, offsetBy: 9))
        XCTAssertEqual(directiveSubSequence.endIndex, sourceUnicodeScalars.endIndex)
        XCTAssertEqual(String(directiveSubSequence), "@meow")
    }
}
