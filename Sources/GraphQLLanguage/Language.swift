//
//  Language.swift
//  GraphQLLanguage
//
//  Created by Yoshimasa Niwa on 12/24/20
//

// GraphQL Language Definition in plain Swift expression.
// Ordered in the same way as `GraphQL.g4` grammar.

protocol LanguageContext {
}

protocol LanguageNode {
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
    var context: LanguageContext?

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
    var context: LanguageContext?

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
    var context: LanguageContext?

    public var alias: String?
    public var name: String
    public var arguments: [Argument]?
    public var directives: [Directive]?
    public var selectionSet: [Selection]?
}

// public struct Arguments = [Argument]

public struct Argument {
    var context: LanguageContext?

    public var name: String
    public var value: Value
}

// public struct Alias // Not used

public struct FragmentSpread {
    var context: LanguageContext?

    public var fragmentName: String
    public var directives: [Directive]?
}

public struct FragmentDefinition {
    var context: LanguageContext?

    public var fragmentName: String
    public var typeCondition: NamedType
    public var directives: [Directive]?
    public var selectionSet: [Selection]
}

// public struct FragmentName = String

// public struct TypeCondition = NamedType

public struct InlineFragment {
    var context: LanguageContext?

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
    var context: LanguageContext?

    // GraphQL `Int` is a signed 32‐bit integer.
    public var intValue: Int32
}

public struct FloatValue {
    var context: LanguageContext?

    // GraphQL `Float` is a signed double‐precision.
    public var floatValue: Double
}

public struct BooleanValue {
    var context: LanguageContext?

    public var booleanValue: Bool
}

public struct StringValue {
    var context: LanguageContext?

    public var stringValue: String
}

public struct NullValue {
    var context: LanguageContext?
}

public struct EnumValue {
    var context: LanguageContext?

    public var enumValue: String
}

public struct ListValue {
    var context: LanguageContext?

    public var values: [Value]
}

public struct ObjectValue {
    var context: LanguageContext?

    public var objectFields: [String: Value]
}

// public struct ObjectField // Not used

public struct Variable {
    var context: LanguageContext?

    public var name: String
}

// public struct VariableDefinitions = [VariableDefinition]

public struct VariableDefinition {
    var context: LanguageContext?

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
    var context: LanguageContext?

    public var name: String
}

public struct ListType {
    var context: LanguageContext?

    public var typeReference: TypeReference
}

// TODO: Consider to use alternative expression
public enum NonNullType {
    case namedType(NamedType)
    case listType(ListType)
}

// public struct Directives = [Directive]

public struct Directive {
    var context: LanguageContext?

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
    var context: LanguageContext?

    public var directives: [Directive]?
    public var rootOperationTypeDefinitions: [RootOperationTypeDefinition]?
}

public struct RootOperationTypeDefinition {
    var context: LanguageContext?

    public var operationType: OperationType
    public var namedType: NamedType
}

public struct SchemaExtension {
    var context: LanguageContext?

    public var directives: [Directive]?
    public var operationTypeDefinitions: [OperationTypeDefinition]?
}

public struct OperationTypeDefinition {
    var context: LanguageContext?

    public var operationType: OperationType
    public var namedType: NamedType
}

public struct Description {
    var context: LanguageContext?

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
    var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
}

public struct ScalarTypeExtension {
    var context: LanguageContext?

    public var name: String
    public var directives: [Directive]
}

public struct ObjectTypeDefinition {
    var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var implementsInterfaces: [NamedType]?
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

// public struct ImplementsInterfaces = [NamedType]

// public struct FieldsDefinition = [FieldDefinition]

public struct FieldDefinition {
    var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var argumentsDefinition: [InputValueDefinition]?
    public var typeReference: TypeReference
    public var directives: [Directive]?
}

// public struct ArgumentsDefinition = [InputValueDefinition]

public struct InputValueDefinition {
    var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var typeReference: TypeReference
    public var defaultValue: Value?
    public var directives: [Directive]?
}

public struct ObjectTypeExtension {
    var context: LanguageContext?

    public var name: String
    public var implementsInterfaces: [NamedType]?
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct InterfaceTypeDefinition {
    var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct InterfaceTypeExtension {
    var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var fieldsDefinition: [FieldDefinition]?
}

public struct UnionTypeDefinition {
    var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var unionMemberTypes: [NamedType]?
}

// public struct UnionMemberTypes = [NamedType]

public struct UnionTypeExtension {
    var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var unionMemberTypes: [NamedType]?
}

public struct EnumTypeDefinition {
    var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var enumValuesDefinition: [EnumValueDefinition]?
}

// public struct  EnumValuesDefinition = [EnumValueDefinition]

public struct EnumValueDefinition {
    var context: LanguageContext?

    public var description: Description?
    public var enumValue: EnumValue
    public var directives: [Directive]?
}

public struct EnumTypeExtension {
    var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var enumValuesDefinition: [EnumValueDefinition]?
}

public struct InputObjectTypeDefinition {
    var context: LanguageContext?

    public var description: Description?
    public var name: String
    public var directives: [Directive]?
    public var inputFieldsDefinition: [InputValueDefinition]?
}

// public struct InputFieldsDefinition = [InputValueDefinition]

public struct InputObjectTypeExtension {
    var context: LanguageContext?

    public var name: String
    public var directives: [Directive]?
    public var inputFieldsDefinition: [InputValueDefinition]?
}

public struct DirectiveDefinition {
    var context: LanguageContext?

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
