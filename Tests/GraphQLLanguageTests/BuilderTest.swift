import Antlr4
import XCTest
@testable import GraphQLLanguage

final class BuilderTest: XCTestCase {
    private func terminalNode(token: GraphQLParser.Tokens, text: String) -> TerminalNode {
        let token = CommonTokenFactory.DEFAULT.create(token.rawValue, text)
        return TerminalNodeImpl(token)
    }

    // MARK: - IntValue

    private func intValueContext(_ text: String) -> GraphQLParser.IntValueContext {
        let context = GraphQLParser.IntValueContext()
        context.addChild(terminalNode(token: .INT_VALUE, text: text))
        return context
    }

    func testIntValue() throws {
        let context = intValueContext("1234")
        let intValue = try context.build()
        XCTAssertEqual(intValue.intValue, 1234)
    }

    func testIntValueWithNegativeSign() throws {
        let context = intValueContext("-1234")
        let intValue = try context.build()
        XCTAssertEqual(intValue.intValue, -1234)
    }

    private func floatValueContext(_ text: String) -> GraphQLParser.FloatValueContext {
        let context = GraphQLParser.FloatValueContext()
        context.addChild(terminalNode(token: .FLOAT_VALUE, text: text))
        return context
    }

    // MARK: - FloatValue

    func testFloatValue() throws {
        let context = floatValueContext("123.4")
        let floatValue = try context.build()
        XCTAssertEqual(floatValue.floatValue, 123.4)
    }

    func testFloatValueWithPositiveSign() throws {
        let context = floatValueContext("+123.4")
        let floatValue = try context.build()
        XCTAssertEqual(floatValue.floatValue, 123.4)
    }

    func testFloatValueWithNegativeSign() throws {
        let context = floatValueContext("-123.4")
        let floatValue = try context.build()
        XCTAssertEqual(floatValue.floatValue, -123.4)
    }

    func testFloatValueWithExponentSign() throws {
        let context = floatValueContext("1234e10")
        let floatValue = try context.build()
        XCTAssertEqual(floatValue.floatValue, 1234e10)
    }

    // MARK: - StringValue

    private func stringValueContext(_ text: String) -> GraphQLParser.StringValueContext {
        let context = GraphQLParser.StringValueContext()
        context.addChild(terminalNode(token: .STRING_VALUE, text: text))
        return context
    }

    func testBlockStringValue() throws {
        let context = stringValueContext("\"\"\"meow meow\"\"\"")
        let stringValue = try context.build()
        XCTAssertEqual(stringValue.stringValue, "meow meow")
    }

    func testBlockStringValueWithCommonIndent() throws {
        let context = stringValueContext("\"\"\"meow\n   meow\n   meow\n   meow\"\"\"")
        let stringValue = try context.build()
        XCTAssertEqual(stringValue.stringValue, "meow\nmeow\nmeow\nmeow")
    }

    func testBlockStringValueWithLineTerminator() throws {
        let context = stringValueContext("\"\"\"me\row\nme\r\now\"\"\"")
        let stringValue = try context.build()
        XCTAssertEqual(stringValue.stringValue, "me\now\nme\now")
    }

    func testBlockStringValueWithLeadingAndTrailingBlankLines() throws {
        let context = stringValueContext("\"\"\"\n\n\nmeow meow\n\n\n\"\"\"")
        let stringValue = try context.build()
        XCTAssertEqual(stringValue.stringValue, "meow meow")
    }

    func testStringValue() throws {
        let context = stringValueContext("\"meow\"")
        let stringValue = try context.build()
        XCTAssertEqual(stringValue.stringValue, "meow")
    }

    func testStringValueWithEscapedUnicode() throws {
        let context = stringValueContext("\"meow\\u3042\"")
        let stringValue = try context.build()
        XCTAssertEqual(stringValue.stringValue, "meow\u{3042}")
    }

    func testStringValueWithEscapedCharacters() throws {
        let context = stringValueContext("\"meow\\\"\\\\\\/\\b\\f\\n\\r\\t\"")
        let stringValue = try context.build()
        XCTAssertEqual(stringValue.stringValue, "meow\"\\/\u{0008}\u{000C}\u{000A}\u{000D}\u{0009}")
    }
}
