//
//  Builder.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

import Antlr4
import Foundation

// GraphQLParser extension to build Language Definitions

enum BuilderError: Error, CustomDebugStringConvertible {
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

extension Optional {
    func unwrap() throws -> Wrapped {
        switch self {
        case .none:
            throw BuilderError.unwrap
        case .some(let wrapped):
            return wrapped
        }
    }
}

protocol Builder {
    associatedtype LanguageType

    func build() throws -> LanguageType
}

extension GraphQLParser.DocumentContext: Builder {
    typealias LanguageType = Document

    func build() throws -> LanguageType {
        let definitions = try definition().map { definition in
            try definition.build()
        }
        return Document(definitions: definitions)
    }
}

extension GraphQLParser.DefinitionContext: Builder {
    typealias LanguageType = Definition

    func build() throws -> LanguageType {
        if let context = executableDefinition() {
            return try context.build()
        }
        if let context = typeSystemDefinition() {
            return try context.build()
        }
        if let context = typeSystemExtension() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.ExecutableDefinitionContext: Builder {
    typealias LanguageType = ExecutableDefinition

    func build() throws -> LanguageType {
        if let context = operationDefinition() {
            return try context.build()
        }
        if let context = fragmentDefinition() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.OperationDefinitionContext: Builder {
    typealias LanguageType = OperationDefinition

    func build() throws -> LanguageType {
        OperationDefinition(operationType: try operationType().unwrap().build(),
                            name: try name()?.build(),
                            variableDefinitions: try variableDefinitions()?.build(),
                            directives: try directives()?.build(),
                            selectionSet: try selectionSet().unwrap().build())
    }
}

extension GraphQLParser.OperationTypeContext: Builder {
    typealias LanguageType = OperationType

    func build() throws -> LanguageType {
        if QUERY() != nil {
            return .query
        }
        if MUTATION() != nil {
            return .mutation
        }
        if SUBSCRIPTION() != nil {
            return .subscription
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.SelectionSetContext: Builder {
    typealias LanguageType = [Selection]

    func build() throws -> LanguageType {
        try selection().map { selection in
            try selection.build()
        }
    }
}

extension GraphQLParser.SelectionContext: Builder {
    typealias LanguageType = Selection

    func build() throws -> LanguageType {
        if let context = field() {
            return try context.build()
        }
        if let context = fragmentSpread() {
            return try context.build()
        }
        if let context = inlineFragment() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.FieldContext: Builder {
    typealias LanguageType = Field

    func build() throws -> LanguageType {
        Field(alias: try alias()?.build(),
              name: try name().unwrap().build(),
              arguments: try arguments()?.build(),
              directives: try directives()?.build(),
              selectionSet: try selectionSet()?.build())
    }
}

extension GraphQLParser.ArgumentsContext: Builder {
    typealias LanguageType = [Argument]

    func build() throws -> LanguageType {
        try argument().map { argument in
            try argument.build()
        }
    }
}

extension GraphQLParser.ArgumentContext: Builder {
    typealias LanguageType = Argument

    func build() throws -> LanguageType {
        Argument(name: try name().unwrap().build(),
                 value: try value().unwrap().build())
    }
}

extension GraphQLParser.AliasContext: Builder {
    typealias LanguageType = String

    func build() throws -> LanguageType {
        getText()
    }
}

extension GraphQLParser.FragmentSpreadContext: Builder {
    typealias LanguageType = FragmentSpread

    func build() throws -> LanguageType {
        FragmentSpread(fragmentName: try fragmentName().unwrap().build(),
                       directives: try directives()?.build())
    }
}

extension GraphQLParser.FragmentDefinitionContext: Builder {
    typealias LanguageType = FragmentDefinition

    func build() throws -> LanguageType {
        FragmentDefinition(fragmentName: try fragmentName().unwrap().build(),
                           typeCondition: try typeCondition().unwrap().build(),
                           directives: try directives()?.build(),
                           selectionSet: try selectionSet().unwrap().build())
    }
}

extension GraphQLParser.FragmentNameContext: Builder {
    typealias LanguageType = String

    func build() throws -> LanguageType {
        getText()
    }
}

extension GraphQLParser.TypeConditionContext: Builder {
    typealias LanguageType = NamedType

    func build() throws -> LanguageType {
        if let context = namedType() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.InlineFragmentContext: Builder {
    typealias LanguageType = InlineFragment

    func build() throws -> LanguageType {
        InlineFragment(typeCondition: try typeCondition()?.build(),
                       directives: try directives()?.build(),
                       selectionSet: try selectionSet().unwrap().build())
    }
}

extension GraphQLParser.ValueContext: Builder {
    typealias LanguageType = Value

    func build() throws -> LanguageType {
        if let context = variable() {
            return try context.build()
        }
        if let context = intValue() {
            return try context.build()
        }
        if let context = floatValue() {
            return try context.build()
        }
        if let context = stringValue() {
            return try context.build()
        }
        if let context = booleanValue() {
            return try context.build()
        }
        if let context = nullValue() {
            return try context.build()
        }
        if let context = enumValue() {
            return try context.build()
        }
        if let context = listValue() {
            return try context.build()
        }
        if let context = objectValue() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.IntValueContext: Builder {
    typealias LanguageType = IntValue

    func build() throws -> LanguageType {
        if let intValue = Int32(getText()) {
            return IntValue(intValue: intValue)
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.FloatValueContext: Builder {
    typealias LanguageType = FloatValue

    func build() throws -> LanguageType {
        if let floatValue = Double(getText()) {
            return FloatValue(floatValue: floatValue)
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.BooleanValueContext: Builder {
    typealias LanguageType = BooleanValue

    func build() throws -> LanguageType {
        if TRUE() != nil {
            return BooleanValue(booleanValue: true)
        }
        if FALSE() != nil {
            return BooleanValue(booleanValue: false)
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.StringValueContext: Builder {
    typealias LanguageType = StringValue

    // See <https://spec.graphql.org/June2018/#sec-String-Value> for parsing details.

    private func build(blockStringCharacters: Substring.SubSequence) throws -> LanguageType {
        // See <https://spec.graphql.org/June2018/#sec-Line-Terminators>
        let isLineTerminators = { (scalar: UnicodeScalar) -> Bool in
            scalar == UnicodeScalar(0x000A) || scalar == UnicodeScalar(0x000D)
        }
        // See <https://spec.graphql.org/June2018/#sec-White-Space>
        let isWhiteSpace = { (scalar: UnicodeScalar) -> Bool in
            scalar == UnicodeScalar(0x0009) || scalar == UnicodeScalar(0x0020)
        }

        // `replacingOccurrences(of:with:) requires `Foundation` framework.
        let rawValue = blockStringCharacters.replacingOccurrences(of: "\\\"\"\"", with: "\"\"\"").unicodeScalars

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

        return StringValue(stringValue: formattedString)
    }

    private func build(stringCharacters: Substring.SubSequence) throws -> LanguageType {
        var unescapedUnicodeScalars = String.UnicodeScalarView()
        var iterator = stringCharacters.unicodeScalars.makeIterator()

        while let unicodeScalar = iterator.next() {
            if unicodeScalar == "\\" {
                guard let unicodeScalar = iterator.next() else {
                    throw BuilderError.unexpectedContext(self)
                }
                switch unicodeScalar {
                case "u":
                    var hexUnicodeScalars = String.UnicodeScalarView()
                    for _ in 0..<4 {
                        guard let scalar = iterator.next() else {
                            throw BuilderError.unexpectedContext(self)
                        }
                        hexUnicodeScalars.append(scalar)
                    }
                    let hexString = String(hexUnicodeScalars)
                    guard let hexValue = UInt32(hexString, radix: 16),
                          let unicodeScalar = UnicodeScalar(hexValue) else {
                        throw BuilderError.unexpectedContext(self)
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
                    throw BuilderError.unexpectedContext(self)
                }
            } else {
                unescapedUnicodeScalars.append(unicodeScalar)
            }
        }
        return StringValue(stringValue: String(unescapedUnicodeScalars))
    }

    func build() throws -> LanguageType {
        let text = getText()
        if text.hasPrefix("\"\"\"") && text.hasSuffix("\"\"\"") {
            return try build(blockStringCharacters: text.dropFirst(3).dropLast(3))
        }
        if text.hasPrefix("\"") && text.hasSuffix("\"") {
            return try build(stringCharacters: text.dropFirst().dropLast())
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.NullValueContext: Builder {
    typealias LanguageType = NullValue

    func build() throws -> LanguageType {
        NullValue()
    }
}

extension GraphQLParser.EnumValueContext: Builder {
    typealias LanguageType = EnumValue

    func build() throws -> LanguageType {
        EnumValue(enumValue: getText())
    }
}

extension GraphQLParser.ListValueContext: Builder {
    typealias LanguageType = ListValue

    func build() throws -> LanguageType {
        let values = try value().map { value in
            try value.build()
        }
        return ListValue(values: values)
    }
}

extension GraphQLParser.ObjectValueContext: Builder {
    typealias LanguageType = ObjectValue

    func build() throws -> LanguageType {
        let objectFields = try objectField().map { objectField -> (String, Value) in
            let name = try objectField.name().unwrap().build()
            let value = try objectField.value().unwrap().build()
            return (name, value)
        }
        return ObjectValue(objectFields: .init(uniqueKeysWithValues: objectFields))
    }
}

extension GraphQLParser.VariableContext: Builder {
    typealias LanguageType = Variable

    func build() throws -> LanguageType {
        Variable(name: try name().unwrap().build())
    }
}

extension GraphQLParser.VariableDefinitionsContext: Builder {
    typealias LanguageType = [VariableDefinition]

    func build() throws -> LanguageType {
        try variableDefinition().map { variableDefinition in
            try variableDefinition.build()
        }
    }
}

extension GraphQLParser.VariableDefinitionContext: Builder {
    typealias LanguageType = VariableDefinition

    func build() throws -> LanguageType {
        VariableDefinition(variable: try variable().unwrap().build(),
                           typeReference: try typeReference().unwrap().build(),
                           defaultValue: try defaultValue()?.build())
    }
}

extension GraphQLParser.DefaultValueContext: Builder {
    typealias LanguageType = Value

    func build() throws -> LanguageType {
        if let context = value() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.TypeReferenceContext: Builder {
    typealias LanguageType = TypeReference

    func build() throws -> LanguageType {
        if let context = namedType() {
            return try context.build()
        }
        if let context = listType() {
            return try context.build()
        }
        if let context = nonNullType() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.NamedTypeContext: Builder {
    typealias LanguageType = NamedType

    func build() throws -> LanguageType {
        NamedType(name: try name().unwrap().build())
    }
}

extension GraphQLParser.ListTypeContext: Builder {
    typealias LanguageType = ListType

    func build() throws -> LanguageType {
        ListType(typeReference: try typeReference().unwrap().build())
    }
}

extension GraphQLParser.NonNullTypeContext: Builder {
    typealias LanguageType = NonNullType

    func build() throws -> LanguageType {
        if let context = namedType() {
            return .namedType(try context.build())
        }
        if let context = listType() {
            return .listType(try context.build())
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.DirectivesContext: Builder {
    typealias LanguageType = [Directive]

    func build() throws -> LanguageType {
        try directive().map { directive in
            try directive.build()
        }
    }
}

extension GraphQLParser.DirectiveContext: Builder {
    typealias LanguageType = Directive

    func build() throws -> LanguageType {
        Directive(name: try name().unwrap().build(),
                  arguments: try arguments()?.build())
    }
}

extension GraphQLParser.TypeSystemDefinitionContext: Builder {
    typealias LanguageType = TypeSystemDefinition

    func build() throws -> LanguageType {
        if let context = schemaDefinition() {
            return try context.build()
        }
        if let context = typeDefinition() {
            return try context.build()
        }
        if let context = directiveDefinition() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.TypeSystemExtensionContext: Builder {
    typealias LanguageType = TypeSystemExtension

    func build() throws -> LanguageType {
        if let context = self.schemaExtension() {
            return try context.build()
        }
        if let context = self.typeExtension() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.SchemaDefinitionContext: Builder {
    typealias LanguageType = SchemaDefinition

    func build() throws -> LanguageType {
        let rootOperationTypeDefinitions = try rootOperationTypeDefinition().map { rootOperationTypeDefinition in
            try rootOperationTypeDefinition.build()
        }
        return SchemaDefinition(directives: try directives()?.build(),
                                rootOperationTypeDefinitions: rootOperationTypeDefinitions)
    }
}

extension GraphQLParser.RootOperationTypeDefinitionContext: Builder {
    typealias LanguageType = RootOperationTypeDefinition

    func build() throws -> LanguageType {
        RootOperationTypeDefinition(operationType: try operationType().unwrap().build(),
                                    namedType: try namedType().unwrap().build())
    }
}

extension GraphQLParser.SchemaExtensionContext: Builder {
    typealias LanguageType = SchemaExtension

    func build() throws -> LanguageType {
        let operationTypeDefinitions = try operationTypeDefinition().map { operationTypeDefinition in
            try operationTypeDefinition.build()
        }
        return SchemaExtension(directives: try directives()?.build(),
                        operationTypeDefinitions: operationTypeDefinitions)
    }
}

extension GraphQLParser.OperationTypeDefinitionContext: Builder {
    typealias LanguageType = OperationTypeDefinition

    func build() throws -> LanguageType {
        OperationTypeDefinition(operationType: try operationType().unwrap().build(),
                                namedType: try namedType().unwrap().build())
    }
}

extension GraphQLParser.DescriptionContext: Builder {
    typealias LanguageType = Description

    func build() throws -> LanguageType {
        Description(stringValue: try stringValue().unwrap().build())
    }
}

extension GraphQLParser.TypeDefinitionContext: Builder {
    typealias LanguageType = TypeDefinition

    func build() throws -> LanguageType {
        if let context = scalarTypeDefinition() {
            return try context.build()
        }
        if let context = objectTypeDefinition() {
            return try context.build()
        }
        if let context = interfaceTypeDefinition() {
            return try context.build()
        }
        if let context = unionTypeDefinition() {
            return try context.build()
        }
        if let context = enumTypeDefinition() {
            return try context.build()
        }
        if let context = inputObjectTypeDefinition() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.TypeExtensionContext: Builder {
    typealias LanguageType = TypeExtension

    func build() throws -> LanguageType {
        if let context = scalarTypeExtension() {
            return try context.build()
        }
        if let context = objectTypeExtension() {
            return try context.build()
        }
        if let context = interfaceTypeExtension() {
            return try context.build()
        }
        if let context = unionTypeExtension() {
            return try context.build()
        }
        if let context = enumTypeExtension() {
            return try context.build()
        }
        if let context = inputObjectTypeExtension() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.ScalarTypeDefinitionContext: Builder {
    typealias LanguageType = ScalarTypeDefinition

    func build() throws -> LanguageType {
        ScalarTypeDefinition(description: try description()?.build(),
                             name: try name().unwrap().build(),
                             directives: try directives()?.build())
    }
}

extension GraphQLParser.ScalarTypeExtensionContext: Builder {
    typealias LanguageType = ScalarTypeExtension

    func build() throws -> LanguageType {
        ScalarTypeExtension(name: try name().unwrap().build(),
                            directives: try directives().unwrap().build())
    }
}

extension GraphQLParser.ObjectTypeDefinitionContext: Builder {
    typealias LanguageType = ObjectTypeDefinition

    func build() throws -> LanguageType {
        ObjectTypeDefinition(description: try description()?.build(),
                             name: try name().unwrap().build(),
                             implementsInterfaces: try implementsInterfaces()?.build(),
                             directives: try directives()?.build(),
                             fieldsDefinition: try fieldsDefinition()?.build())
    }
}

extension GraphQLParser.ImplementsInterfacesContext: Builder {
    typealias LanguageType = [NamedType]

    func build() throws -> LanguageType {
        var types = [NamedType]()
        var currentContext: GraphQLParser.ImplementsInterfacesContext? = self
        while let context = currentContext {
            types.append(try context.namedType().unwrap().build())
            currentContext = context.implementsInterfaces()
        }
        return types.reversed()
    }
}

extension GraphQLParser.FieldsDefinitionContext: Builder {
    typealias LanguageType = [FieldDefinition]

    func build() throws -> LanguageType {
        try fieldDefinition().map { fieldDefinition in
            try fieldDefinition.build()
        }
    }
}

extension GraphQLParser.FieldDefinitionContext: Builder {
    typealias LanguageType = FieldDefinition

    func build() throws -> LanguageType {
        FieldDefinition(description: try description()?.build(),
                        name: try name().unwrap().build(),
                        argumentsDefinition: try argumentsDefinition()?.build(),
                        typeReference: try typeReference().unwrap().build(),
                        directives: try directives()?.build())
    }
}

extension GraphQLParser.ArgumentsDefinitionContext: Builder {
    typealias LanguageType = [InputValueDefinition]

    func build() throws -> LanguageType {
        try inputValueDefinition().map { inputValueDefinition in
            try inputValueDefinition.build()
        }
    }
}

extension GraphQLParser.InputValueDefinitionContext: Builder {
    typealias LanguageType = InputValueDefinition

    func build() throws -> LanguageType {
        InputValueDefinition(description: try description()?.build(),
                             name: try name().unwrap().build(),
                             typeReference: try typeReference().unwrap().build(),
                             defaultValue: try defaultValue()?.build(),
                             directives: try directives()?.build())
    }
}

extension GraphQLParser.ObjectTypeExtensionContext: Builder {
    typealias LanguageType = ObjectTypeExtension

    func build() throws -> LanguageType {
        // TODO: Combination of arguments is restricted.
        ObjectTypeExtension(name: try name().unwrap().build(),
                            implementsInterfaces: try implementsInterfaces()?.build(),
                            directives: try directives()?.build(),
                            fieldsDefinition: try fieldsDefinition()?.build())
    }
}

extension GraphQLParser.InterfaceTypeDefinitionContext: Builder {
    typealias LanguageType = InterfaceTypeDefinition

    func build() throws -> LanguageType {
        InterfaceTypeDefinition(description: try description()?.build(),
                                name: try name().unwrap().build(),
                                directives: try directives()?.build(),
                                fieldsDefinition: try fieldsDefinition()?.build())
    }
}

extension GraphQLParser.InterfaceTypeExtensionContext: Builder {
    typealias LanguageType = InterfaceTypeExtension

    func build() throws -> LanguageType {
        // TODO: Combination of arguments is restricted.
        InterfaceTypeExtension(name: try name().unwrap().build(),
                               directives: try directives()?.build(),
                               fieldsDefinition: try fieldsDefinition()?.build())
    }
}

extension GraphQLParser.UnionTypeDefinitionContext: Builder {
    typealias LanguageType = UnionTypeDefinition

    func build() throws -> LanguageType {
        UnionTypeDefinition(description: try description()?.build(),
                            name: try name().unwrap().build(),
                            directives: try directives()?.build(),
                            unionMemberTypes: try unionMemberTypes()?.build())
    }
}

extension GraphQLParser.UnionMemberTypesContext: Builder {
    typealias LanguageType = [NamedType]

    func build() throws -> LanguageType {
        var types = [NamedType]()
        var currentContext: GraphQLParser.UnionMemberTypesContext? = self
        while let context = currentContext {
            types.append(try context.namedType().unwrap().build())
            currentContext = context.unionMemberTypes()
        }
        return types.reversed()
    }
}

extension GraphQLParser.UnionTypeExtensionContext: Builder {
    typealias LanguageType = UnionTypeExtension

    func build() throws -> LanguageType {
        // TODO: Combination of arguments is restricted.
        UnionTypeExtension(name: try name().unwrap().build(),
                           directives: try directives()?.build(),
                           unionMemberTypes: try unionMemberTypes()?.build())
    }
}

extension GraphQLParser.EnumTypeDefinitionContext: Builder {
    typealias LanguageType = EnumTypeDefinition

    func build() throws -> LanguageType {
        EnumTypeDefinition(description: try description()?.build(),
                           name: try name().unwrap().build(),
                           directives: try directives()?.build(),
                           enumValuesDefinition: try enumValuesDefinition()?.build())
    }
}

extension GraphQLParser.EnumValuesDefinitionContext: Builder {
    typealias LanguageType = [EnumValueDefinition]

    func build() throws -> LanguageType {
        try enumValueDefinition().map { enumValueDefinition in
            try enumValueDefinition.build()
        }
    }
}

extension GraphQLParser.EnumValueDefinitionContext: Builder {
    typealias LanguageType = EnumValueDefinition

    func build() throws -> LanguageType {
        EnumValueDefinition(description: try description()?.build(),
                            enumValue: try enumValue().unwrap().build(),
                            directives: try directives()?.build())
    }
}

extension GraphQLParser.EnumTypeExtensionContext: Builder {
    typealias LanguageType = EnumTypeExtension

    func build() throws -> LanguageType {
        // TODO: Combination of arguments is restricted.
        EnumTypeExtension(name: try name().unwrap().build(),
                          directives: try directives()?.build(),
                          enumValuesDefinition: try enumValuesDefinition()?.build())
    }
}

extension GraphQLParser.InputObjectTypeDefinitionContext: Builder {
    typealias LanguageType = InputObjectTypeDefinition

    func build() throws -> LanguageType {
        InputObjectTypeDefinition(description: try description()?.build(),
                                  name: try name().unwrap().build(),
                                  directives: try directives()?.build(),
                                  inputFieldsDefinition: try inputFieldsDefinition()?.build())
    }
}

extension GraphQLParser.InputFieldsDefinitionContext: Builder {
    typealias LanguageType = [InputValueDefinition]

    func build() throws -> LanguageType {
        try inputValueDefinition().map { inputValueDefinition in
            try inputValueDefinition.build()
        }
    }
}

extension GraphQLParser.InputObjectTypeExtensionContext: Builder {
    typealias LanguageType = InputObjectTypeExtension

    func build() throws -> LanguageType {
        // TODO: Combination of arguments is restricted.
        return InputObjectTypeExtension(name: try name().unwrap().build(),
                                        directives: try directives()?.build(),
                                        inputFieldsDefinition: try inputFieldsDefinition()?.build())
    }
}

extension GraphQLParser.DirectiveDefinitionContext: Builder {
    typealias LanguageType = DirectiveDefinition

    func build() throws -> LanguageType {
        DirectiveDefinition(description: try description()?.build(),
                            name: try name().unwrap().build(),
                            argumentsDefinition: try argumentsDefinition()?.build(),
                            directiveLocations: try directiveLocations().unwrap().build())
    }
}

extension GraphQLParser.DirectiveLocationsContext: Builder {
    typealias LanguageType = [DirectiveLocation]

    func build() throws -> LanguageType {
        var locations = [DirectiveLocation]()
        var currentContext: GraphQLParser.DirectiveLocationsContext? = self
        while let context = currentContext {
            locations.append(try context.directiveLocation().unwrap().build())
            currentContext = context.directiveLocations()
        }
        return locations.reversed()
    }
}

extension GraphQLParser.DirectiveLocationContext: Builder {
    typealias LanguageType = DirectiveLocation

    func build() throws -> LanguageType {
        if let context = executableDirectiveLocation() {
            return try context.build()
        }
        if let context = typeSystemDirectiveLocation() {
            return try context.build()
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.ExecutableDirectiveLocationContext: Builder {
    typealias LanguageType = ExecutableDirectiveLocation

    func build() throws -> LanguageType {
        if let executableDirectiveLocation = ExecutableDirectiveLocation(rawValue: getText()) {
            return executableDirectiveLocation
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.TypeSystemDirectiveLocationContext: Builder {
    typealias LanguageType = TypeSystemDirectiveLocation

    func build() throws -> LanguageType {
        if let typeSystemDirectiveLocation = TypeSystemDirectiveLocation(rawValue: getText()) {
            return typeSystemDirectiveLocation
        }
        throw BuilderError.unexpectedContext(self)
    }
}

extension GraphQLParser.NameContext: Builder {
    typealias LanguageType = String

    func build() throws -> LanguageType {
        getText()
    }
}
