//
//  Builder.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import Antlr4
import Foundation

enum BuildError: Error, CustomDebugStringConvertible {
    case unwrap
    case unexpectedContext(_ context: ParserRuleContext)

    // TODO: Improve error description
    var debugDescription: String {
        switch self {
        case .unwrap:
            return "Required field must not be nil. Probably a parser bug."
        case .unexpectedContext(let context):
            let rule = context.toStringTree(GraphQLParser.ruleNames)
            if let token = context.getStart() {
                let line = token.getLine()
                let position = token.getCharPositionInLine()
                return "Build error at: \(rule) line:\(line) position:\(position)"
            } else {
                return "Build error at: \(rule)"
            }
        }
    }
}

private extension Optional {
    func unwrap() throws -> Wrapped {
        switch self {
        case .none:
            throw BuildError.unwrap
        case .some(let wrapped):
            return wrapped
        }
    }
}

protocol BuildContext {
}

protocol Builder {
    associatedtype LanguageType

    func build(with buildContext: BuildContext) throws -> LanguageType
}

private struct NullBuildContext: BuildContext {
}

private let nullBuildContext = NullBuildContext()

extension Builder {
    func build() throws -> LanguageType {
        try build(with: nullBuildContext)
    }
}

struct BuildLanguageContext: LanguageContext {
    var buildContext: BuildContext
    var parserRuleContext: ParserRuleContext
}

extension LanguageNode {
    var buildContext: BuildContext? {
        (context as? BuildLanguageContext)?.buildContext
    }

    var parserRuleContext: ParserRuleContext? {
        (context as? BuildLanguageContext)?.parserRuleContext
    }
}

// MARK: -

extension GraphQLParser.DocumentContext: Builder {
    func build(with buildContext: BuildContext) throws -> Document {
        let definitions = try definition().map { definition in
            try definition.build(with: buildContext)
        }
        return Document(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                        definitions: definitions)
    }
}

extension GraphQLParser.DefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> Definition {
        if let context = executableDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = typeSystemDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = typeSystemExtension() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.ExecutableDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> ExecutableDefinition {
        if let context = operationDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = fragmentDefinition() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.OperationDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> OperationDefinition {
        OperationDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                            operationType: try operationType().unwrap().build(with: buildContext),
                            name: try name()?.build(with: buildContext),
                            variableDefinitions: try variableDefinitions()?.build(with: buildContext),
                            directives: try directives()?.build(with: buildContext),
                            selectionSet: try selectionSet().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.OperationTypeContext: Builder {
    func build(with buildContext: BuildContext) throws -> OperationType {
        if QUERY() != nil {
            return .query
        }
        if MUTATION() != nil {
            return .mutation
        }
        if SUBSCRIPTION() != nil {
            return .subscription
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.SelectionSetContext: Builder {
    func build(with buildContext: BuildContext) throws -> [Selection] {
        try selection().map { selection in
            try selection.build(with: buildContext)
        }
    }
}

extension GraphQLParser.SelectionContext: Builder {
    func build(with buildContext: BuildContext) throws -> Selection {
        if let context = field() {
            return try context.build(with: buildContext)
        }
        if let context = fragmentSpread() {
            return try context.build(with: buildContext)
        }
        if let context = inlineFragment() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.FieldContext: Builder {
    func build(with buildContext: BuildContext) throws -> Field {
        Field(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
              alias: try alias()?.build(with: buildContext),
              name: try name().unwrap().build(with: buildContext),
              arguments: try arguments()?.build(with: buildContext),
              directives: try directives()?.build(with: buildContext),
              selectionSet: try selectionSet()?.build(with: buildContext))
    }
}

extension GraphQLParser.ArgumentsContext: Builder {
    func build(with buildContext: BuildContext) throws -> [Argument] {
        try argument().map { argument in
            try argument.build(with: buildContext)
        }
    }
}

extension GraphQLParser.ArgumentContext: Builder {
    func build(with buildContext: BuildContext) throws -> Argument {
        Argument(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                 name: try name().unwrap().build(with: buildContext),
                 value: try value().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.AliasContext: Builder {
    func build(with buildContext: BuildContext) throws -> String {
        getText()
    }
}

extension GraphQLParser.FragmentSpreadContext: Builder {
    func build(with buildContext: BuildContext) throws -> FragmentSpread {
        FragmentSpread(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                       fragmentName: try fragmentName().unwrap().build(with: buildContext),
                       directives: try directives()?.build(with: buildContext))
    }
}

extension GraphQLParser.FragmentDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> FragmentDefinition {
        FragmentDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                           fragmentName: try fragmentName().unwrap().build(with: buildContext),
                           typeCondition: try typeCondition().unwrap().build(with: buildContext),
                           directives: try directives()?.build(with: buildContext),
                           selectionSet: try selectionSet().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.FragmentNameContext: Builder {
    func build(with buildContext: BuildContext) throws -> String {
        getText()
    }
}

extension GraphQLParser.TypeConditionContext: Builder {
    func build(with buildContext: BuildContext) throws -> NamedType {
        if let context = namedType() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.InlineFragmentContext: Builder {
    func build(with buildContext: BuildContext) throws -> InlineFragment {
        InlineFragment(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                       typeCondition: try typeCondition()?.build(with: buildContext),
                       directives: try directives()?.build(with: buildContext),
                       selectionSet: try selectionSet().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.ValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> Value {
        if let context = variable() {
            return try context.build(with: buildContext)
        }
        if let context = intValue() {
            return try context.build(with: buildContext)
        }
        if let context = floatValue() {
            return try context.build(with: buildContext)
        }
        if let context = stringValue() {
            return try context.build(with: buildContext)
        }
        if let context = booleanValue() {
            return try context.build(with: buildContext)
        }
        if let context = nullValue() {
            return try context.build(with: buildContext)
        }
        if let context = enumValue() {
            return try context.build(with: buildContext)
        }
        if let context = listValue() {
            return try context.build(with: buildContext)
        }
        if let context = objectValue() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.IntValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> IntValue {
        if let intValue = Int32(getText()) {
            return IntValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                            intValue: intValue)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.FloatValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> FloatValue {
        if let floatValue = Double(getText()) {
            return FloatValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                              floatValue: floatValue)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.BooleanValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> BooleanValue {
        if TRUE() != nil {
            return BooleanValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                                booleanValue: true)
        }
        if FALSE() != nil {
            return BooleanValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                                booleanValue: false)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.StringValueContext: Builder {
        // See <https://spec.graphql.org/June2018/#sec-String-Value> for parsing details.

    private func value(ofBlockStringCharacters stringCharacters: Substring.SubSequence) throws -> String {
        // See <https://spec.graphql.org/June2018/#sec-Line-Terminators>
        let isLineTerminators = { (scalar: UnicodeScalar) -> Bool in
            scalar == UnicodeScalar(0x000A) || scalar == UnicodeScalar(0x000D)
        }
        // See <https://spec.graphql.org/June2018/#sec-White-Space>
        let isWhiteSpace = { (scalar: UnicodeScalar) -> Bool in
            scalar == UnicodeScalar(0x0009) || scalar == UnicodeScalar(0x0020)
        }

        // `replacingOccurrences(of:with:) requires `Foundation` framework.
        let rawValue = stringCharacters.replacingOccurrences(of: "\\\"\"\"", with: "\"\"\"").unicodeScalars

        let lines = rawValue.split(whereSeparator: isLineTerminators)

        var commonIndent: String.UnicodeScalarView.SubSequence?
        for line in lines.dropFirst() {
            let indent = line.prefix(while: isWhiteSpace)
            if indent.count < line.count {
                if let currentCommonIndent = commonIndent {
                    if indent.count < currentCommonIndent.count {
                        commonIndent = indent
                    }
                } else {
                    commonIndent = indent
                }
            }
        }

        let linesWithoutCommonIndent = lines.enumerated().map { index, line -> String.UnicodeScalarView.SubSequence in
            if index > 0, let commonIndent = commonIndent, line.starts(with: commonIndent) {
                return line.dropFirst(commonIndent.count)
            } else {
                return line
            }
        }

        let formatted = linesWithoutCommonIndent.drop { line in
            line.allSatisfy(isWhiteSpace)
        }.reversed().drop { line in
            line.allSatisfy(isWhiteSpace)
        }.reversed()

        let formattedUnicodeScalars = formatted.joined(separator: [UnicodeScalar(0x000A)])
        var formattedString = ""
        formattedString.unicodeScalars.append(contentsOf: formattedUnicodeScalars)

        return formattedString
    }

    private func value(ofStringCharacters stringCharacters: Substring.SubSequence) throws -> String {
        var unescapedUnicodeScalars = String.UnicodeScalarView()
        var iterator = stringCharacters.unicodeScalars.makeIterator()

        while let unicodeScalar = iterator.next() {
            if unicodeScalar == "\\" {
                guard let unicodeScalar = iterator.next() else {
                    throw BuildError.unexpectedContext(self)
                }
                switch unicodeScalar {
                case "u":
                    var hexUnicodeScalars = String.UnicodeScalarView()
                    for _ in 0..<4 {
                        guard let scalar = iterator.next() else {
                            throw BuildError.unexpectedContext(self)
                        }
                        hexUnicodeScalars.append(scalar)
                    }
                    let hexString = String(hexUnicodeScalars)
                    guard let hexValue = UInt32(hexString, radix: 16),
                          let unicodeScalar = UnicodeScalar(hexValue) else {
                        throw BuildError.unexpectedContext(self)
                    }
                    unescapedUnicodeScalars.append(unicodeScalar)
                case "\"", "\\", "/":
                    unescapedUnicodeScalars.append(unicodeScalar)
                case "b":
                    unescapedUnicodeScalars.append(UnicodeScalar(0x0008))
                case "f":
                    unescapedUnicodeScalars.append(UnicodeScalar(0x000C))
                case "n":
                    unescapedUnicodeScalars.append(UnicodeScalar(0x000A))
                case "r":
                    unescapedUnicodeScalars.append(UnicodeScalar(0x000D))
                case "t":
                    unescapedUnicodeScalars.append(UnicodeScalar(0x0009))
                default:
                    throw BuildError.unexpectedContext(self)
                }
            } else {
                unescapedUnicodeScalars.append(unicodeScalar)
            }
        }
        return String(unescapedUnicodeScalars)
    }

    func build(with buildContext: BuildContext) throws -> StringValue {
        let text = getText()
        if text.hasPrefix("\"\"\"") && text.hasSuffix("\"\"\"") {
            let stringValue = try value(ofBlockStringCharacters: text.dropFirst(3).dropLast(3))
            return StringValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                               stringValue: stringValue)
        }
        if text.hasPrefix("\"") && text.hasSuffix("\"") {
            let stringValue = try value(ofStringCharacters: text.dropFirst().dropLast())
            return StringValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                               stringValue: stringValue)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.NullValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> NullValue {
        NullValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self))
    }
}

extension GraphQLParser.EnumValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> EnumValue {
        EnumValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                  enumValue: getText())
    }
}

extension GraphQLParser.ListValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> ListValue {
        let values = try value().map { value in
            try value.build(with: buildContext)
        }
        return ListValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                         values: values)
    }
}

extension GraphQLParser.ObjectValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> ObjectValue {
        let objectFields = try objectField().map { objectField -> (String, Value) in
            let name = try objectField.name().unwrap().build(with: buildContext)
            let value = try objectField.value().unwrap().build(with: buildContext)
            return (name, value)
        }
        return ObjectValue(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                           objectFields: .init(uniqueKeysWithValues: objectFields))
    }
}

extension GraphQLParser.VariableContext: Builder {
    func build(with buildContext: BuildContext) throws -> Variable {
        Variable(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                 name: try name().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.VariableDefinitionsContext: Builder {
    func build(with buildContext: BuildContext) throws -> [VariableDefinition] {
        try variableDefinition().map { variableDefinition in
            try variableDefinition.build(with: buildContext)
        }
    }
}

extension GraphQLParser.VariableDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> VariableDefinition {
        VariableDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                           variable: try variable().unwrap().build(with: buildContext),
                           typeReference: try typeReference().unwrap().build(with: buildContext),
                           defaultValue: try defaultValue()?.build(with: buildContext))
    }
}

extension GraphQLParser.DefaultValueContext: Builder {
    func build(with buildContext: BuildContext) throws -> Value {
        if let context = value() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.TypeReferenceContext: Builder {
    func build(with buildContext: BuildContext) throws -> TypeReference {
        if let context = namedType() {
            return try context.build(with: buildContext)
        }
        if let context = listType() {
            return try context.build(with: buildContext)
        }
        if let context = nonNullType() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.NamedTypeContext: Builder {
    func build(with buildContext: BuildContext) throws -> NamedType {
        NamedType(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                  name: try name().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.ListTypeContext: Builder {
    func build(with buildContext: BuildContext) throws -> ListType {
        ListType(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                 typeReference: try typeReference().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.NonNullTypeContext: Builder {
    func build(with buildContext: BuildContext) throws -> NonNullType {
        if let context = namedType() {
            return .namedType(try context.build(with: buildContext))
        }
        if let context = listType() {
            return .listType(try context.build(with: buildContext))
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.DirectivesContext: Builder {
    func build(with buildContext: BuildContext) throws -> [Directive] {
        try directive().map { directive in
            try directive.build(with: buildContext)
        }
    }
}

extension GraphQLParser.DirectiveContext: Builder {
    func build(with buildContext: BuildContext) throws -> Directive {
        Directive(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                  name: try name().unwrap().build(with: buildContext),
                  arguments: try arguments()?.build(with: buildContext))
    }
}

extension GraphQLParser.TypeSystemDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> TypeSystemDefinition {
        if let context = schemaDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = typeDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = directiveDefinition() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.TypeSystemExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> TypeSystemExtension {
        if let context = self.schemaExtension() {
            return try context.build(with: buildContext)
        }
        if let context = self.typeExtension() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.SchemaDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> SchemaDefinition {
        let rootOperationTypeDefinitions = try rootOperationTypeDefinition().map { rootOperationTypeDefinition in
            try rootOperationTypeDefinition.build(with: buildContext)
        }
        return SchemaDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                                directives: try directives()?.build(with: buildContext),
                                rootOperationTypeDefinitions: rootOperationTypeDefinitions)
    }
}

extension GraphQLParser.RootOperationTypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> RootOperationTypeDefinition {
        RootOperationTypeDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                                    operationType: try operationType().unwrap().build(with: buildContext),
                                    namedType: try namedType().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.SchemaExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> SchemaExtension {
        let operationTypeDefinitions = try operationTypeDefinition().map { operationTypeDefinition in
            try operationTypeDefinition.build(with: buildContext)
        }
        return SchemaExtension(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                               directives: try directives()?.build(with: buildContext),
                               operationTypeDefinitions: operationTypeDefinitions)
    }
}

extension GraphQLParser.OperationTypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> OperationTypeDefinition {
        OperationTypeDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                                operationType: try operationType().unwrap().build(with: buildContext),
                                namedType: try namedType().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.DescriptionContext: Builder {
    func build(with buildContext: BuildContext) throws -> Description {
        Description(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                    stringValue: try stringValue().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.TypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> TypeDefinition {
        if let context = scalarTypeDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = objectTypeDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = interfaceTypeDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = unionTypeDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = enumTypeDefinition() {
            return try context.build(with: buildContext)
        }
        if let context = inputObjectTypeDefinition() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.TypeExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> TypeExtension {
        if let context = scalarTypeExtension() {
            return try context.build(with: buildContext)
        }
        if let context = objectTypeExtension() {
            return try context.build(with: buildContext)
        }
        if let context = interfaceTypeExtension() {
            return try context.build(with: buildContext)
        }
        if let context = unionTypeExtension() {
            return try context.build(with: buildContext)
        }
        if let context = enumTypeExtension() {
            return try context.build(with: buildContext)
        }
        if let context = inputObjectTypeExtension() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.ScalarTypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> ScalarTypeDefinition {
        ScalarTypeDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                             description: try description()?.build(with: buildContext),
                             name: try name().unwrap().build(with: buildContext),
                             directives: try directives()?.build(with: buildContext))
    }
}

extension GraphQLParser.ScalarTypeExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> ScalarTypeExtension {
        ScalarTypeExtension(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                            name: try name().unwrap().build(with: buildContext),
                            directives: try directives().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.ObjectTypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> ObjectTypeDefinition {
        ObjectTypeDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                             description: try description()?.build(with: buildContext),
                             name: try name().unwrap().build(with: buildContext),
                             implementsInterfaces: try implementsInterfaces()?.build(with: buildContext),
                             directives: try directives()?.build(with: buildContext),
                             fieldsDefinition: try fieldsDefinition()?.build(with: buildContext))
    }
}

extension GraphQLParser.ImplementsInterfacesContext: Builder {
    func build(with buildContext: BuildContext) throws -> [NamedType] {
        var types = [NamedType]()
        var currentContext: GraphQLParser.ImplementsInterfacesContext? = self
        while let context = currentContext {
            types.append(try context.namedType().unwrap().build(with: buildContext))
            currentContext = context.implementsInterfaces()
        }
        return types.reversed()
    }
}

extension GraphQLParser.FieldsDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> [FieldDefinition] {
        try fieldDefinition().map { fieldDefinition in
            try fieldDefinition.build(with: buildContext)
        }
    }
}

extension GraphQLParser.FieldDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> FieldDefinition {
        FieldDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                        description: try description()?.build(with: buildContext),
                        name: try name().unwrap().build(with: buildContext),
                        argumentsDefinition: try argumentsDefinition()?.build(with: buildContext),
                        typeReference: try typeReference().unwrap().build(with: buildContext),
                        directives: try directives()?.build(with: buildContext))
    }
}

extension GraphQLParser.ArgumentsDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> [InputValueDefinition] {
        try inputValueDefinition().map { inputValueDefinition in
            try inputValueDefinition.build(with: buildContext)
        }
    }
}

extension GraphQLParser.InputValueDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> InputValueDefinition {
        InputValueDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                             description: try description()?.build(with: buildContext),
                             name: try name().unwrap().build(with: buildContext),
                             typeReference: try typeReference().unwrap().build(with: buildContext),
                             defaultValue: try defaultValue()?.build(with: buildContext),
                             directives: try directives()?.build(with: buildContext))
    }
}

extension GraphQLParser.ObjectTypeExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> ObjectTypeExtension {
        // TODO: Combination of arguments is restricted.
        ObjectTypeExtension(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                            name: try name().unwrap().build(with: buildContext),
                            implementsInterfaces: try implementsInterfaces()?.build(with: buildContext),
                            directives: try directives()?.build(with: buildContext),
                            fieldsDefinition: try fieldsDefinition()?.build(with: buildContext))
    }
}

extension GraphQLParser.InterfaceTypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> InterfaceTypeDefinition {
        InterfaceTypeDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                                description: try description()?.build(with: buildContext),
                                name: try name().unwrap().build(with: buildContext),
                                directives: try directives()?.build(with: buildContext),
                                fieldsDefinition: try fieldsDefinition()?.build(with: buildContext))
    }
}

extension GraphQLParser.InterfaceTypeExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> InterfaceTypeExtension {
        // TODO: Combination of arguments is restricted.
        InterfaceTypeExtension(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                               name: try name().unwrap().build(with: buildContext),
                               directives: try directives()?.build(with: buildContext),
                               fieldsDefinition: try fieldsDefinition()?.build(with: buildContext))
    }
}

extension GraphQLParser.UnionTypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> UnionTypeDefinition {
        UnionTypeDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                            description: try description()?.build(with: buildContext),
                            name: try name().unwrap().build(with: buildContext),
                            directives: try directives()?.build(with: buildContext),
                            unionMemberTypes: try unionMemberTypes()?.build(with: buildContext))
    }
}

extension GraphQLParser.UnionMemberTypesContext: Builder {
    func build(with buildContext: BuildContext) throws -> [NamedType] {
        var types = [NamedType]()
        var currentContext: GraphQLParser.UnionMemberTypesContext? = self
        while let context = currentContext {
            types.append(try context.namedType().unwrap().build(with: buildContext))
            currentContext = context.unionMemberTypes()
        }
        return types.reversed()
    }
}

extension GraphQLParser.UnionTypeExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> UnionTypeExtension {
        // TODO: Combination of arguments is restricted.
        UnionTypeExtension(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                           name: try name().unwrap().build(with: buildContext),
                           directives: try directives()?.build(with: buildContext),
                           unionMemberTypes: try unionMemberTypes()?.build(with: buildContext))
    }
}

extension GraphQLParser.EnumTypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> EnumTypeDefinition {
        EnumTypeDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                           description: try description()?.build(with: buildContext),
                           name: try name().unwrap().build(with: buildContext),
                           directives: try directives()?.build(with: buildContext),
                           enumValuesDefinition: try enumValuesDefinition()?.build(with: buildContext))
    }
}

extension GraphQLParser.EnumValuesDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> [EnumValueDefinition] {
        try enumValueDefinition().map { enumValueDefinition in
            try enumValueDefinition.build(with: buildContext)
        }
    }
}

extension GraphQLParser.EnumValueDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> EnumValueDefinition {
        EnumValueDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                            description: try description()?.build(with: buildContext),
                            enumValue: try enumValue().unwrap().build(with: buildContext),
                            directives: try directives()?.build(with: buildContext))
    }
}

extension GraphQLParser.EnumTypeExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> EnumTypeExtension {
        // TODO: Combination of arguments is restricted.
        EnumTypeExtension(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                          name: try name().unwrap().build(with: buildContext),
                          directives: try directives()?.build(with: buildContext),
                          enumValuesDefinition: try enumValuesDefinition()?.build(with: buildContext))
    }
}

extension GraphQLParser.InputObjectTypeDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> InputObjectTypeDefinition {
        InputObjectTypeDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                                  description: try description()?.build(with: buildContext),
                                  name: try name().unwrap().build(with: buildContext),
                                  directives: try directives()?.build(with: buildContext),
                                  inputFieldsDefinition: try inputFieldsDefinition()?.build(with: buildContext))
    }
}

extension GraphQLParser.InputFieldsDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> [InputValueDefinition] {
        try inputValueDefinition().map { inputValueDefinition in
            try inputValueDefinition.build(with: buildContext)
        }
    }
}

extension GraphQLParser.InputObjectTypeExtensionContext: Builder {
    func build(with buildContext: BuildContext) throws -> InputObjectTypeExtension {
        // TODO: Combination of arguments is restricted.
        return InputObjectTypeExtension(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                                        name: try name().unwrap().build(with: buildContext),
                                        directives: try directives()?.build(with: buildContext),
                                        inputFieldsDefinition: try inputFieldsDefinition()?.build(with: buildContext))
    }
}

extension GraphQLParser.DirectiveDefinitionContext: Builder {
    func build(with buildContext: BuildContext) throws -> DirectiveDefinition {
        DirectiveDefinition(context: BuildLanguageContext(buildContext: buildContext, parserRuleContext: self),
                            description: try description()?.build(with: buildContext),
                            name: try name().unwrap().build(with: buildContext),
                            argumentsDefinition: try argumentsDefinition()?.build(with: buildContext),
                            directiveLocations: try directiveLocations().unwrap().build(with: buildContext))
    }
}

extension GraphQLParser.DirectiveLocationsContext: Builder {
    func build(with buildContext: BuildContext) throws -> [DirectiveLocation] {
        var locations = [DirectiveLocation]()
        var currentContext: GraphQLParser.DirectiveLocationsContext? = self
        while let context = currentContext {
            locations.append(try context.directiveLocation().unwrap().build(with: buildContext))
            currentContext = context.directiveLocations()
        }
        return locations.reversed()
    }
}

extension GraphQLParser.DirectiveLocationContext: Builder {
    func build(with buildContext: BuildContext) throws -> DirectiveLocation {
        if let context = executableDirectiveLocation() {
            return try context.build(with: buildContext)
        }
        if let context = typeSystemDirectiveLocation() {
            return try context.build(with: buildContext)
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.ExecutableDirectiveLocationContext: Builder {
    func build(with buildContext: BuildContext) throws -> ExecutableDirectiveLocation {
        if let executableDirectiveLocation = ExecutableDirectiveLocation(rawValue: getText()) {
            return executableDirectiveLocation
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.TypeSystemDirectiveLocationContext: Builder {
    func build(with buildContext: BuildContext) throws -> TypeSystemDirectiveLocation {
        if let typeSystemDirectiveLocation = TypeSystemDirectiveLocation(rawValue: getText()) {
            return typeSystemDirectiveLocation
        }
        throw BuildError.unexpectedContext(self)
    }
}

extension GraphQLParser.NameContext: Builder {
    func build(with buildContext: BuildContext) throws -> String {
        getText()
    }
}
