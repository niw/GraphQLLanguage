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
}

// public struct Arguments = [Argument]

public struct Argument {
    public var context: LanguageContext?

    public var name: String
    public var value: Value
}

// public struct Alias // Not used

public struct FragmentSpread {
    public var context: LanguageContext?

    public var fragmentName: String
    public var directives: [Directive]?
}

public struct FragmentDefinition {
    public var context: LanguageContext?

    public var fragmentName: String
    public var typeCondition: NamedType
    public var directives: [Directive]?
    public var selectionSet: [Selection]
}

// public struct FragmentName = String

// public struct TypeCondition = NamedType

public struct InlineFragment {
    public var context: LanguageContext?

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
    public var context: LanguageContext?

    // GraphQL `Int` is a signed 32‐bit integer.
    public var intValue: Int32
}

public struct FloatValue {
    public var context: LanguageContext?

    // GraphQL `Float` is a signed double‐precision.
    public var floatValue: Double
}

public struct BooleanValue {
    public var context: LanguageContext?

    public var booleanValue: Bool
}

public struct StringValue {
    public var context: LanguageContext?

    public var stringValue: String
}

public struct NullValue {
    public var context: LanguageContext?
}

public struct EnumValue {
    public var context: LanguageContext?

    public var enumValue: String
}

public struct ListValue {
    public var context: LanguageContext?

    public var values: [Value]
}

public struct ObjectValue {
    public var context: LanguageContext?

    public var objectFields: [String: Value]
}

// public struct ObjectField // Not used

public struct Variable {
    public var context: LanguageContext?

    public var name: String
}

// public struct VariableDefinitions = [VariableDefinition]

public struct VariableDefinition {
    public var context: LanguageContext?

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
    public var context: LanguageContext?

    public var name: String
}

public struct ListType {
    public var context: LanguageContext?

    public var typeReference: TypeReference
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
}

// public struct Directives = [Directive]

public struct Directive {
    public var context: LanguageContext?

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
    public var context: LanguageContext?

    public var directives: [Directive]?
    public var rootOperationTypeDefinitions: [RootOperationTypeDefinition]?
}

public struct RootOperationTypeDefinition {
    public var context: LanguageContext?

    public var operationType: OperationType
    public var namedType: NamedType
}

public struct SchemaExtension {
    public var context: LanguageContext?

    public var directives: [Directive]?
    public var operationTypeDefinitions: [OperationTypeDefinition]?
}

public struct OperationTypeDefinition {
    public var context: LanguageContext?

    public var operationType: OperationType
    public var namedType: NamedType
}

public struct Description {
    public var context: LanguageContext?

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
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
}

public struct ScalarTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]
}

public struct ObjectTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var implementsInterfaces: [NamedType]?
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
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
}

// public struct ArgumentsDefinition = [InputValueDefinition]

public struct InputValueDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var typeReference: TypeReference
    public var defaultValue: Value?
    public var directives: [Directive]?
}

public struct ObjectTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var implementsInterfaces: [NamedType]?
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct InterfaceTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct InterfaceTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct UnionTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var unionMemberTypes: [NamedType]?
}

// public struct UnionMemberTypes = [NamedType]

public struct UnionTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var unionMemberTypes: [NamedType]?
}

public struct EnumTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var enumValuesDefinition: [EnumValueDefinition]?
}

// public struct  EnumValuesDefinition = [EnumValueDefinition]

public struct EnumValueDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var enumValue: EnumValue
    public var directives: [Directive]?
}

public struct EnumTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var enumValuesDefinition: [EnumValueDefinition]?
}

public struct InputObjectTypeDefinition {
    public var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var inputFieldsDefinition: [InputValueDefinition]?
}

// public struct InputFieldsDefinition = [InputValueDefinition]

public struct InputObjectTypeExtension {
    public var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var inputFieldsDefinition: [InputValueDefinition]?
}

public struct DirectiveDefinition {
    public var context: LanguageContext?

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
