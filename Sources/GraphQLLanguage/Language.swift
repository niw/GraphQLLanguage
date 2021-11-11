//
//  Language.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

// GraphQL Language Definition in plain Swift expression.
// Ordered in the same way as `GraphQL.g4` grammar.

public protocol LanguageContext {
}

public protocol LanguageNode {
    var context: LanguageContext? { get }
}

extension Document: LanguageNode {
}
extension OperationDefinition: LanguageNode {
}
extension Field: LanguageNode {
}
extension Argument: LanguageNode {
}
extension FragmentSpread: LanguageNode {
}
extension FragmentDefinition: LanguageNode {
}
extension InlineFragment: LanguageNode {
}
extension IntValue: LanguageNode {
}
extension FloatValue: LanguageNode {
}
extension BooleanValue: LanguageNode {
}
extension StringValue: LanguageNode {
}
extension NullValue: LanguageNode {
}
extension EnumValue: LanguageNode {
}
extension ListValue: LanguageNode {
}
extension ObjectValue: LanguageNode {
}
extension Variable: LanguageNode {
}
extension VariableDefinition: LanguageNode {
}
extension NamedType: LanguageNode {
}
extension ListType: LanguageNode {
}
extension NonNullType: LanguageNode {
}
extension Directive: LanguageNode {
}
extension SchemaDefinition: LanguageNode {
}
extension RootOperationTypeDefinition: LanguageNode {
}
extension SchemaExtension: LanguageNode {
}
extension OperationTypeDefinition: LanguageNode {
}
extension Description: LanguageNode {
}
extension ScalarTypeDefinition: LanguageNode {
}
extension ScalarTypeExtension: LanguageNode {
}
extension ObjectTypeDefinition: LanguageNode {
}
extension FieldDefinition: LanguageNode {
}
extension InputValueDefinition: LanguageNode {
}
extension ObjectTypeExtension: LanguageNode {
}
extension InterfaceTypeDefinition: LanguageNode {
}
extension InterfaceTypeExtension: LanguageNode {
}
extension UnionTypeDefinition: LanguageNode {
}
extension UnionTypeExtension: LanguageNode {
}
extension EnumTypeDefinition: LanguageNode {
}
extension EnumValueDefinition: LanguageNode {
}
extension EnumTypeExtension: LanguageNode {
}
extension InputObjectTypeDefinition: LanguageNode {
}
extension InputObjectTypeExtension: LanguageNode {
}
extension DirectiveDefinition: LanguageNode {
}

public struct Document {
    public var context: LanguageContext?

    public var definitions: [Definition]

    public init(
        context: LanguageContext? = nil,
        definitions: [Definition]
    ) {
        self.context = context
        self.definitions = definitions
    }
}

// See `ExecutableDefinition`, `TypeSystemDefinition`, and `TypeSystemExtension`.
public protocol Definition {
}

public protocol ExecutableDefinition: Definition {
}

extension OperationDefinition: ExecutableDefinition {
}
extension FragmentDefinition: ExecutableDefinition {
}

public struct OperationDefinition {
    public var context: LanguageContext?

    public var operationType: OperationType
    public var name: String?
    public var variableDefinitions: [VariableDefinition]?
    public var directives: [Directive]?
    public var selectionSet: [Selection]

    public init(
        context: LanguageContext? = nil,
        operationType: OperationType,
        name: String? = nil,
        variableDefinitions: [VariableDefinition]? = nil,
        directives: [Directive]? = nil,
        selectionSet: [Selection]
    ) {
        self.context = context
        self.operationType = operationType
        self.name = name
        self.variableDefinitions = variableDefinitions
        self.directives = directives
        self.selectionSet = selectionSet
    }
}

public enum OperationType: String {
    case query
    case mutation
    case subscription
}

// public struct SelectionSet = [Selection]

public protocol Selection {
}

extension Field: Selection {
}
extension FragmentSpread: Selection {
}
extension InlineFragment: Selection {
}

public struct Field {
    public var context: LanguageContext?

    public var alias: String?
    public var name: String
    public var arguments: [Argument]?
    public var directives: [Directive]?
    public var selectionSet: [Selection]?

    public init(
        context: LanguageContext? = nil,
        alias: String? = nil,
        name: String,
        arguments: [Argument]? = nil,
        directives: [Directive]? = nil,
        selectionSet: [Selection]? = nil
    ) {
        self.context = context
        self.alias = alias
        self.name = name
        self.arguments = arguments
        self.directives = directives
        self.selectionSet = selectionSet
    }
}

// public struct Arguments = [Argument]

public struct Argument {
    public var context: LanguageContext?

    public var name: String
    public var value: Value

    public init(
        context: LanguageContext? = nil,
        name: String,
        value: Value
    ) {
        self.context = context
        self.name = name
        self.value = value
    }
}

// public struct Alias // Not used

public struct FragmentSpread {
    public var context: LanguageContext?

    public var fragmentName: String
    public var directives: [Directive]?

    public init(
        context: LanguageContext? = nil,
        fragmentName: String,
        directives: [Directive]? = nil
    ) {
        self.context = context
        self.fragmentName = fragmentName
        self.directives = directives
    }
}

public struct FragmentDefinition {
    public var context: LanguageContext?

    public var fragmentName: String
    public var typeCondition: NamedType
    public var directives: [Directive]?
    public var selectionSet: [Selection]

    public init(
        context: LanguageContext? = nil,
        fragmentName: String,
        typeCondition: NamedType,
        directives: [Directive]? = nil,
        selectionSet: [Selection]
    ) {
        self.context = context
        self.fragmentName = fragmentName
        self.typeCondition = typeCondition
        self.directives = directives
        self.selectionSet = selectionSet
    }
}

// public struct FragmentName = String

// public struct TypeCondition = NamedType

public struct InlineFragment {
    public var context: LanguageContext?

    public var typeCondition: NamedType?
    public var directives: [Directive]?
    public var selectionSet: [Selection]

    public init(
        context: LanguageContext? = nil,
        typeCondition: NamedType? = nil,
        directives: [Directive]? = nil,
        selectionSet: [Selection]
    ) {
        self.context = context
        self.typeCondition = typeCondition
        self.directives = directives
        self.selectionSet = selectionSet
    }
}

public protocol Value {
}

extension Variable: Value {
}
extension IntValue: Value {
}
extension FloatValue: Value {
}
extension BooleanValue: Value {
}
extension StringValue: Value {
}
extension NullValue: Value {
}
extension EnumValue: Value {
}
extension ListValue: Value {
}
extension ObjectValue: Value {
}

public struct IntValue {
    public var context: LanguageContext?

    // GraphQL `Int` is a signed 32‐bit integer.
    public var intValue: Int32

    public init(
        context: LanguageContext? = nil,
        intValue: Int32
    ) {
        self.context = context
        self.intValue = intValue
    }
}

public struct FloatValue {
    public var context: LanguageContext?

    // GraphQL `Float` is a signed double‐precision.
    public var floatValue: Double

    public init(
        context: LanguageContext? = nil,
        floatValue: Double
    ) {
        self.context = context
        self.floatValue = floatValue
    }
}

public struct BooleanValue {
    public var context: LanguageContext?

    public var booleanValue: Bool

    public init(
        context: LanguageContext? = nil,
        booleanValue: Bool
    ) {
        self.context = context
        self.booleanValue = booleanValue
    }
}

public struct StringValue {
    public var context: LanguageContext?

    public var stringValue: String

    public init(
        context: LanguageContext? = nil,
        stringValue: String
    ) {
        self.context = context
        self.stringValue = stringValue
    }
}

public struct NullValue {
    public var context: LanguageContext?

    public init(
        context: LanguageContext? = nil
    ) {
        self.context = context
    }
}

public struct EnumValue {
    public var context: LanguageContext?

    public var enumValue: String

    public init(
        context: LanguageContext? = nil,
        enumValue: String
    ) {
        self.context = context
        self.enumValue = enumValue
    }
}

public struct ListValue {
    public var context: LanguageContext?

    public var values: [Value]

    public init(
        context: LanguageContext? = nil,
        values: [Value]
    ) {
        self.context = context
        self.values = values
    }
}

public struct ObjectValue {
    public var context: LanguageContext?

    public var objectFields: [String: Value]

    public init(
        context: LanguageContext? = nil,
        objectFields: [String : Value]
    ) {
        self.context = context
        self.objectFields = objectFields
    }
}

// public struct ObjectField // Not used

public struct Variable {
    public var context: LanguageContext?

    public var name: String

    public init(
        context: LanguageContext? = nil,
        name: String
    ) {
        self.context = context
        self.name = name
    }
}

// public struct VariableDefinitions = [VariableDefinition]

public struct VariableDefinition {
    public var context: LanguageContext?

    public var variable: Variable
    public var typeReference: TypeReference
    public var defaultValue: Value?

    public init(
        context: LanguageContext? = nil,
        variable: Variable,
        typeReference: TypeReference,
        defaultValue: Value? = nil
    ) {
        self.context = context
        self.variable = variable
        self.typeReference = typeReference
        self.defaultValue = defaultValue
    }
}

// public struct DefaultValue = Value

public protocol TypeReference {
}

extension NamedType: TypeReference {
}
extension ListType: TypeReference {
}
extension NonNullType: TypeReference {
}

public struct NamedType {
    public var context: LanguageContext?

    public var name: String

    public init(
        context: LanguageContext? = nil,
        name: String
    ) {
        self.context = context
        self.name = name
    }
}

public struct ListType {
    public var context: LanguageContext?

    public var typeReference: TypeReference

    public init(
        context: LanguageContext? = nil,
        typeReference: TypeReference
    ) {
        self.context = context
        self.typeReference = typeReference
    }
}

public protocol NullableTypeReference {
}

extension NamedType: NullableTypeReference {
}
extension ListType: NullableTypeReference {
}

public struct NonNullType {
    public var context: LanguageContext?

    public var typeReference: NullableTypeReference

    public init(
        context: LanguageContext? = nil,
        typeReference: NullableTypeReference
    ) {
        self.context = context
        self.typeReference = typeReference
    }
}

// public struct Directives = [Directive]

public struct Directive {
    public var context: LanguageContext?

    public var name: String
    public var arguments: [Argument]?

    public init(
        context: LanguageContext? = nil,
        name: String,
        arguments: [Argument]? = nil
    ) {
        self.context = context
        self.name = name
        self.arguments = arguments
    }
}

// See `TypeDefinition`
public protocol TypeSystemDefinition: Definition {
}

extension SchemaDefinition: TypeSystemDefinition {
}
extension DirectiveDefinition: TypeSystemDefinition {
}

// See `TypeExtension`.
public protocol TypeSystemExtension: Definition {
}
extension SchemaExtension: TypeSystemExtension {
}

public struct SchemaDefinition {
    public var context: LanguageContext?

    public var directives: [Directive]?
    public var rootOperationTypeDefinitions: [RootOperationTypeDefinition]?

    public init(
        context: LanguageContext? = nil,
        directives: [Directive]? = nil,
        rootOperationTypeDefinitions: [RootOperationTypeDefinition]? = nil
    ) {
        self.context = context
        self.directives = directives
        self.rootOperationTypeDefinitions = rootOperationTypeDefinitions
    }
}

public struct RootOperationTypeDefinition {
    public var context: LanguageContext?

    public var operationType: OperationType
    public var namedType: NamedType

    public init(
        context: LanguageContext? = nil,
        operationType: OperationType,
        namedType: NamedType
    ) {
        self.context = context
        self.operationType = operationType
        self.namedType = namedType
    }
}

public struct SchemaExtension {
    public var context: LanguageContext?

    public var directives: [Directive]?
    public var operationTypeDefinitions: [OperationTypeDefinition]?

    public init(
        context: LanguageContext? = nil,
        directives: [Directive]? = nil,
        operationTypeDefinitions: [OperationTypeDefinition]? = nil
    ) {
        self.context = context
        self.directives = directives
        self.operationTypeDefinitions = operationTypeDefinitions
    }
}

public struct OperationTypeDefinition {
    public var context: LanguageContext?

    public var operationType: OperationType
    public var namedType: NamedType

    public init(
        context: LanguageContext? = nil,
        operationType: OperationType,
        namedType: NamedType
    ) {
        self.context = context
        self.operationType = operationType
        self.namedType = namedType
    }
}

public struct Description {
    public var context: LanguageContext?

    public var stringValue: StringValue

    public init(
        context: LanguageContext? = nil,
        stringValue: StringValue
    ) {
        self.context = context
        self.stringValue = stringValue
    }
}

public protocol TypeDefinition: TypeSystemDefinition {
}

extension ScalarTypeDefinition: TypeDefinition {
}
extension ObjectTypeDefinition: TypeDefinition {
}
extension InterfaceTypeDefinition: TypeDefinition {
}
extension UnionTypeDefinition: TypeDefinition {
}
extension EnumTypeDefinition: TypeDefinition {
}
extension InputObjectTypeDefinition: TypeDefinition {
}

public protocol TypeExtension: TypeSystemExtension {
}

extension ScalarTypeExtension: TypeExtension {
}
extension ObjectTypeExtension: TypeExtension {
}
extension InterfaceTypeExtension: TypeExtension {
}
extension UnionTypeExtension: TypeExtension {
}
extension EnumTypeExtension: TypeExtension {
}
extension InputObjectTypeExtension: TypeExtension {
}

public struct ScalarTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        directives: [Directive]? = nil
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.directives = directives
    }
}

public struct ScalarTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]

    public init(
        context: LanguageContext? = nil,
        name: String,
        directives: [Directive]
    ) {
        self.context = context
        self.name = name
        self.directives = directives
    }
}

public struct ObjectTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var implementsInterfaces: [NamedType]?
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        implementsInterfaces: [NamedType]? = nil,
        directives: [Directive]? = nil,
        fieldsDefinition: [FieldDefinition]? = nil
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.implementsInterfaces = implementsInterfaces
        self.directives = directives
        self.fieldsDefinition = fieldsDefinition
    }
}

// public struct ImplementsInterfaces = [NamedType]

// public struct FieldsDefinition = [FieldDefinition]

public struct FieldDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var argumentsDefinition: [InputValueDefinition]?
    public var typeReference: TypeReference
    public var directives: [Directive]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        argumentsDefinition: [InputValueDefinition]? = nil,
        typeReference: TypeReference,
        directives: [Directive]? = nil
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.argumentsDefinition = argumentsDefinition
        self.typeReference = typeReference
        self.directives = directives
    }
}

// public struct ArgumentsDefinition = [InputValueDefinition]

public struct InputValueDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var typeReference: TypeReference
    public var defaultValue: Value?
    public var directives: [Directive]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        typeReference: TypeReference,
        defaultValue: Value? = nil,
        directives: [Directive]? = nil
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.typeReference = typeReference
        self.defaultValue = defaultValue
        self.directives = directives
    }
}

public struct ObjectTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var implementsInterfaces: [NamedType]?
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?

    public init(
        context: LanguageContext? = nil,
        name: String,
        implementsInterfaces: [NamedType]? = nil,
        directives: [Directive]? = nil,
        fieldsDefinition: [FieldDefinition]? = nil
    ) {
        self.context = context
        self.name = name
        self.implementsInterfaces = implementsInterfaces
        self.directives = directives
        self.fieldsDefinition = fieldsDefinition
    }
}

public struct InterfaceTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        directives: [Directive]? = nil,
        fieldsDefinition: [FieldDefinition]? = nil
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.directives = directives
        self.fieldsDefinition = fieldsDefinition
    }
}

public struct InterfaceTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?

    public init(
        context: LanguageContext? = nil,
        name: String,
        directives: [Directive]? = nil,
        fieldsDefinition: [FieldDefinition]? = nil
    ) {
        self.context = context
        self.name = name
        self.directives = directives
        self.fieldsDefinition = fieldsDefinition
    }
}

public struct UnionTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var unionMemberTypes: [NamedType]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        directives: [Directive]? = nil,
        unionMemberTypes: [NamedType]? = nil
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.directives = directives
        self.unionMemberTypes = unionMemberTypes
    }
}

// public struct UnionMemberTypes = [NamedType]

public struct UnionTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var unionMemberTypes: [NamedType]?

    public init(
        context: LanguageContext? = nil,
        name: String,
        directives: [Directive]? = nil,
        unionMemberTypes: [NamedType]? = nil
    ) {
        self.context = context
        self.name = name
        self.directives = directives
        self.unionMemberTypes = unionMemberTypes
    }
}

public struct EnumTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var enumValuesDefinition: [EnumValueDefinition]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        directives: [Directive]? = nil,
        enumValuesDefinition: [EnumValueDefinition]? = nil
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.directives = directives
        self.enumValuesDefinition = enumValuesDefinition
    }
}

// public struct  EnumValuesDefinition = [EnumValueDefinition]

public struct EnumValueDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var enumValue: EnumValue
    public var directives: [Directive]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        enumValue: EnumValue,
        directives: [Directive]? = nil
    ) {
        self.context = context
        self.description = description
        self.enumValue = enumValue
        self.directives = directives
    }
}

public struct EnumTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var enumValuesDefinition: [EnumValueDefinition]?

    public init(
        context: LanguageContext? = nil,
        name: String,
        directives: [Directive]? = nil,
        enumValuesDefinition: [EnumValueDefinition]? = nil
    ) {
        self.context = context
        self.name = name
        self.directives = directives
        self.enumValuesDefinition = enumValuesDefinition
    }
}

public struct InputObjectTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var inputFieldsDefinition: [InputValueDefinition]?

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        directives: [Directive]? = nil,
        inputFieldsDefinition: [InputValueDefinition]? = nil
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.directives = directives
        self.inputFieldsDefinition = inputFieldsDefinition
    }
}

// public struct InputFieldsDefinition = [InputValueDefinition]

public struct InputObjectTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var inputFieldsDefinition: [InputValueDefinition]?

    public init(
        context: LanguageContext? = nil,
        name: String,
        directives: [Directive]? = nil,
        inputFieldsDefinition: [InputValueDefinition]? = nil
    ) {
        self.context = context
        self.name = name
        self.directives = directives
        self.inputFieldsDefinition = inputFieldsDefinition
    }
}

public struct DirectiveDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var argumentsDefinition: [InputValueDefinition]?
    public var directiveLocations: [DirectiveLocation]

    public init(
        context: LanguageContext? = nil,
        description: Description? = nil,
        name: String,
        argumentsDefinition: [InputValueDefinition]? = nil,
        directiveLocations: [DirectiveLocation]
    ) {
        self.context = context
        self.description = description
        self.name = name
        self.argumentsDefinition = argumentsDefinition
        self.directiveLocations = directiveLocations
    }
}

// public struct DirectiveLocations = [DirectiveLocation]

public protocol DirectiveLocation {
}

extension ExecutableDirectiveLocation: DirectiveLocation {
}
extension TypeSystemDirectiveLocation: DirectiveLocation {
}

public enum ExecutableDirectiveLocation: String {
    case query = "QUERY"
    case mutation = "MUTATION"
    case subscription = "SUBSCRIPTION"
    case field = "FIELD"
    case fragmentDefinition = "FRAGMENT_DEFINITION"
    case fragmentSpread = "FRAGMENT_SPREAD"
    case inlineFragment = "INLINE_FRAGMENT"
}

public enum TypeSystemDirectiveLocation: String {
    case schema = "SCHEMA"
    case scalar = "SCALAR"
    case object = "OBJECT"
    case fieldDefinition = "FIELD_DEFINITION"
    case argumentDefinition = "ARGUMENT_DEFINITION"
    case interface = "INTERFACE"
    case union = "UNION"
    case `enum` = "ENUM"
    case enumValue = "ENUM_VALUE"
    case inputObject = "INPUT_OBJECT"
    case inputFieldDefinition = "INPUT_FIELD_DEFINITION"
}

// public struct Name = String
