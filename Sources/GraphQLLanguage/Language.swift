//
//  Language.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

// GraphQL Language Definition in plain Swift expression.
// Ordered in the same way as `GraphQL.g4` grammar.

public struct Document {
    var definitions: [Definition]
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
    var operationType: OperationType
    var name: String?
    var variableDefinitions: [VariableDefinition]?
    var directives: [Directive]?
    var selectionSet: [Selection]
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
    var alias: String?
    var name: String
    var arguments: [Argument]?
    var directives: [Directive]?
    var selectionSet: [Selection]?
}

// public struct Arguments = [Argument]

public struct Argument {
    var name: String
    var value: Value
}

// public struct Alias // Unused

public struct FragmentSpread {
    var fragmentName: String
    var directives: [Directive]?
}

public struct FragmentDefinition {
    var fragmentName: String
    var typeCondition: NamedType
    var directives: [Directive]?
    var selectionSet: [Selection]
}

// public struct FragmentName = String

// public struct TypeCondition = NamedType

public struct InlineFragment {
    var typeCondition: NamedType?
    var directives: [Directive]?
    var selectionSet: [Selection]
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
    var intValue: Int32
}

public struct FloatValue {
    // GraphQL `Float` is a signed double‐precision.
    var floatValue: Double
}

public struct BooleanValue {
    var booleanValue: Bool
}

public struct StringValue {
    var stringValue: String
}

public struct NullValue {
}

public struct EnumValue {
    var enumValue: String
}

public struct ListValue {
    var values: [Value]
}

public struct ObjectValue {
    var objectFields: [String: Value]
}

// public struct ObjectField // Ununsed

public struct Variable {
    var name: String
}

// public struct VariableDefinitions

public struct VariableDefinition {
    var variable: Variable
    var typeReference: TypeReference
    var defaultValue: Value?
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
    var name: String
}

public struct ListType {
    var typeReference: TypeReference
}

// TODO: Consider to use alternative expression
public enum NonNullType {
    case namedType(NamedType)
    case listType(ListType)
}

// public struct Directives = [Directive]

public struct Directive {
    var name: String
    var arguments: [Argument]?
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
    var directives: [Directive]?
    var rootOperationTypeDefinitions: [RootOperationTypeDefinition]?
}

public struct RootOperationTypeDefinition {
    var operationType: OperationType
    var namedType: NamedType
}

public struct SchemaExtension {
    var directives: [Directive]?
    var operationTypeDefinitions: [OperationTypeDefinition]?
}

public struct OperationTypeDefinition {
    var operationType: OperationType
    var namedType: NamedType
}

public struct Description {
    var stringValue: StringValue
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
    var description: Description?
    var name: String
    var directives: [Directive]?
}

public struct ScalarTypeExtension {
    var name: String
    var directives: [Directive]
}

public struct ObjectTypeDefinition {
    var description: Description?
    var name: String
    var implementsInterfaces: [NamedType]?
    var directives: [Directive]?
    var fieldsDefinition: [FieldDefinition]?
}

// public struct ImplementsInterfaces = [NamedType]

// public struct FieldsDefinition = [FieldDefinition]

public struct FieldDefinition {
    var description: Description?
    var name: String
    var argumentsDefinition: [InputValueDefinition]?
    var typeReference: TypeReference
    var directives: [Directive]?
}

// public struct ArgumentsDefinition = [InputValueDefinition]

public struct InputValueDefinition {
    var description: Description?
    var name: String
    var typeReference: TypeReference
    var defaultValue: Value?
    var directives: [Directive]?
}

public struct ObjectTypeExtension {
    var name: String
    var implementsInterfaces: [NamedType]?
    var directives: [Directive]?
    var fieldsDefinition: [FieldDefinition]?
}

public struct InterfaceTypeDefinition {
    var description: Description?
    var name: String
    var directives: [Directive]?
    var fieldsDefinition: [FieldDefinition]?
}

public struct InterfaceTypeExtension {
    var name: String
    var directives: [Directive]?
    var fieldsDefinition: [FieldDefinition]?
}

public struct UnionTypeDefinition {
    var description: Description?
    var name: String
    var directives: [Directive]?
    var unionMemberTypes: [NamedType]?
}

// public struct UnionMemberTypes = [NamedType]

public struct UnionTypeExtension {
    var name: String
    var directives: [Directive]?
    var unionMemberTypes: [NamedType]?
}

public struct EnumTypeDefinition {
    var description: Description?
    var name: String
    var directives: [Directive]?
    var enumValuesDefinition: [EnumValueDefinition]?
}

// public struct  EnumValuesDefinition = [EnumValueDefinition]

public struct EnumValueDefinition {
    var description: Description?
    var enumValue: EnumValue
    var directives: [Directive]?
}

public struct EnumTypeExtension {
    var name: String
    var directives: [Directive]?
    var enumValuesDefinition: [EnumValueDefinition]?
}

public struct InputObjectTypeDefinition {
    var description: Description?
    var name: String
    var directives: [Directive]?
    var inputFieldsDefinition: [InputValueDefinition]?
}

// public struct InputFieldsDefinition = [InputValueDefinition]

public struct InputObjectTypeExtension {
    var name: String
    var directives: [Directive]?
    var inputFieldsDefinition: [InputValueDefinition]?
}

public struct DirectiveDefinition {
    var description: Description?
    var name: String
    var argumentsDefinition: [InputValueDefinition]?
    var directiveLocations: [DirectiveLocation]
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
