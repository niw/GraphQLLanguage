//
//  Language.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

// GraphQL Language Definition in plain Swift expression.
// Ordered in the same way as `GraphQL.g4` grammar.

public struct Document {
    public var definitions: [Definition]
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
    public var operationType: OperationType
    public var name: String?
    public var variableDefinitions: [VariableDefinition]?
    public var directives: [Directive]?
    public var selectionSet: [Selection]
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
    public var alias: String?
    public var name: String
    public var arguments: [Argument]?
    public var directives: [Directive]?
    public var selectionSet: [Selection]?
}

// public struct Arguments = [Argument]

public struct Argument {
    public var name: String
    public var value: Value
}

// public struct Alias // Not used

public struct FragmentSpread {
    public var fragmentName: String
    public var directives: [Directive]?
}

public struct FragmentDefinition {
    public var fragmentName: String
    public var typeCondition: NamedType
    public var directives: [Directive]?
    public var selectionSet: [Selection]
}

// public struct FragmentName = String

// public struct TypeCondition = NamedType

public struct InlineFragment {
    public var typeCondition: NamedType?
    public var directives: [Directive]?
    public var selectionSet: [Selection]
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
    // GraphQL `Int` is a signed 32‐bit integer.
    public var intValue: Int32
}

public struct FloatValue {
    // GraphQL `Float` is a signed double‐precision.
    public var floatValue: Double
}

public struct BooleanValue {
    public var booleanValue: Bool
}

public struct StringValue {
    public var stringValue: String
}

public struct NullValue {
}

public struct EnumValue {
    public var enumValue: String
}

public struct ListValue {
    public var values: [Value]
}

public struct ObjectValue {
    public var objectFields: [String: Value]
}

// public struct ObjectField // Not used

public struct Variable {
    public var name: String
}

// public struct VariableDefinitions

public struct VariableDefinition {
    public var variable: Variable
    public var typeReference: TypeReference
    public var defaultValue: Value?
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
    public var name: String
}

public struct ListType {
    public var typeReference: TypeReference
}

// TODO: Consider to use alternative expression
public enum NonNullType {
    case namedType(NamedType)
    case listType(ListType)
}

// public struct Directives = [Directive]

public struct Directive {
    public var name: String
    public var arguments: [Argument]?
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
    public var directives: [Directive]?
    public var rootOperationTypeDefinitions: [RootOperationTypeDefinition]?
}

public struct RootOperationTypeDefinition {
    public var operationType: OperationType
    public var namedType: NamedType
}

public struct SchemaExtension {
    public var directives: [Directive]?
    public var operationTypeDefinitions: [OperationTypeDefinition]?
}

public struct OperationTypeDefinition {
    public var operationType: OperationType
    public var namedType: NamedType
}

public struct Description {
    public var stringValue: StringValue
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
    public var description: Description?
    public var name: String
    public var directives: [Directive]?
}

public struct ScalarTypeExtension {
    public var name: String
    public var directives: [Directive]
}

public struct ObjectTypeDefinition {
    public var description: Description?
    public var name: String
    public var implementsInterfaces: [NamedType]?
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

// public struct ImplementsInterfaces = [NamedType]

// public struct FieldsDefinition = [FieldDefinition]

public struct FieldDefinition {
    public var description: Description?
    public var name: String
    public var argumentsDefinition: [InputValueDefinition]?
    public var typeReference: TypeReference
    public var directives: [Directive]?
}

// public struct ArgumentsDefinition = [InputValueDefinition]

public struct InputValueDefinition {
    public var description: Description?
    public var name: String
    public var typeReference: TypeReference
    public var defaultValue: Value?
    public var directives: [Directive]?
}

public struct ObjectTypeExtension {
    public var name: String
    public var implementsInterfaces: [NamedType]?
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct InterfaceTypeDefinition {
    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct InterfaceTypeExtension {
    public var name: String
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct UnionTypeDefinition {
    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var unionMemberTypes: [NamedType]?
}

// public struct UnionMemberTypes = [NamedType]

public struct UnionTypeExtension {
    public var name: String
    public var directives: [Directive]?
    public var unionMemberTypes: [NamedType]?
}

public struct EnumTypeDefinition {
    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var enumValuesDefinition: [EnumValueDefinition]?
}

// public struct  EnumValuesDefinition = [EnumValueDefinition]

public struct EnumValueDefinition {
    public var description: Description?
    public var enumValue: EnumValue
    public var directives: [Directive]?
}

public struct EnumTypeExtension {
    public var name: String
    public var directives: [Directive]?
    public var enumValuesDefinition: [EnumValueDefinition]?
}

public struct InputObjectTypeDefinition {
    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var inputFieldsDefinition: [InputValueDefinition]?
}

// public struct InputFieldsDefinition = [InputValueDefinition]

public struct InputObjectTypeExtension {
    public var name: String
    public var directives: [Directive]?
    public var inputFieldsDefinition: [InputValueDefinition]?
}

public struct DirectiveDefinition {
    public var description: Description?
    public var name: String
    public var argumentsDefinition: [InputValueDefinition]?
    public var directiveLocations: [DirectiveLocation]
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
