//
//  VisitorTest.swift
//  GraphQLLanguageTests
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import XCTest
@testable import GraphQLLanguage

final class VisitorTest: XCTestCase {
    func testVisitDocument() throws {
        let source = Source(string: "query ($cat1: Cat = { cat: 1 }, $cat2: Cat = 2) { cat }")
        let document = try Document.parsing(source)

        var visited: [Visitable] = []
        document.visit { visitable in
            visited.append(visitable)
        }

        let visitedNames = visited.map { node in
            String(describing: Mirror(reflecting: node).subjectType)
        }
        XCTAssertEqual(visitedNames, [
            "Variable", "NamedType", "IntValue", "ObjectValue", "VariableDefinition",
            "Variable", "NamedType", "IntValue", "VariableDefinition",
            "Field",
            "OperationDefinition",
            "Document"
        ])
    }
}
