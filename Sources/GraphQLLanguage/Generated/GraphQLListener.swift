// Generated from Vendor/antlr4-graphql-grammar/src/main/antlr4/GraphQL.g4 by ANTLR 4.9
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link GraphQLParser}.
 */
internal protocol GraphQLListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#document}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDocument(_ ctx: GraphQLParser.DocumentContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#document}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDocument(_ ctx: GraphQLParser.DocumentContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefinition(_ ctx: GraphQLParser.DefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefinition(_ ctx: GraphQLParser.DefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#executableDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExecutableDefinition(_ ctx: GraphQLParser.ExecutableDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#executableDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExecutableDefinition(_ ctx: GraphQLParser.ExecutableDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#operationDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOperationDefinition(_ ctx: GraphQLParser.OperationDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#operationDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOperationDefinition(_ ctx: GraphQLParser.OperationDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#operationType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOperationType(_ ctx: GraphQLParser.OperationTypeContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#operationType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOperationType(_ ctx: GraphQLParser.OperationTypeContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#selectionSet}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectionSet(_ ctx: GraphQLParser.SelectionSetContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#selectionSet}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectionSet(_ ctx: GraphQLParser.SelectionSetContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#selection}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelection(_ ctx: GraphQLParser.SelectionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#selection}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelection(_ ctx: GraphQLParser.SelectionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#field}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterField(_ ctx: GraphQLParser.FieldContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#field}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitField(_ ctx: GraphQLParser.FieldContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#arguments}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArguments(_ ctx: GraphQLParser.ArgumentsContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#arguments}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArguments(_ ctx: GraphQLParser.ArgumentsContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#argument}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArgument(_ ctx: GraphQLParser.ArgumentContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#argument}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArgument(_ ctx: GraphQLParser.ArgumentContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#alias}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlias(_ ctx: GraphQLParser.AliasContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#alias}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlias(_ ctx: GraphQLParser.AliasContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#fragmentSpread}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFragmentSpread(_ ctx: GraphQLParser.FragmentSpreadContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#fragmentSpread}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFragmentSpread(_ ctx: GraphQLParser.FragmentSpreadContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#fragmentDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFragmentDefinition(_ ctx: GraphQLParser.FragmentDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#fragmentDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFragmentDefinition(_ ctx: GraphQLParser.FragmentDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#fragmentName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFragmentName(_ ctx: GraphQLParser.FragmentNameContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#fragmentName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFragmentName(_ ctx: GraphQLParser.FragmentNameContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#typeCondition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeCondition(_ ctx: GraphQLParser.TypeConditionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#typeCondition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeCondition(_ ctx: GraphQLParser.TypeConditionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#inlineFragment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInlineFragment(_ ctx: GraphQLParser.InlineFragmentContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#inlineFragment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInlineFragment(_ ctx: GraphQLParser.InlineFragmentContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterValue(_ ctx: GraphQLParser.ValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitValue(_ ctx: GraphQLParser.ValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#intValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntValue(_ ctx: GraphQLParser.IntValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#intValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntValue(_ ctx: GraphQLParser.IntValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#floatValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFloatValue(_ ctx: GraphQLParser.FloatValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#floatValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFloatValue(_ ctx: GraphQLParser.FloatValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#booleanValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBooleanValue(_ ctx: GraphQLParser.BooleanValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#booleanValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBooleanValue(_ ctx: GraphQLParser.BooleanValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#stringValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringValue(_ ctx: GraphQLParser.StringValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#stringValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringValue(_ ctx: GraphQLParser.StringValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#nullValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNullValue(_ ctx: GraphQLParser.NullValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#nullValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNullValue(_ ctx: GraphQLParser.NullValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#enumValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnumValue(_ ctx: GraphQLParser.EnumValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#enumValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnumValue(_ ctx: GraphQLParser.EnumValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#listValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterListValue(_ ctx: GraphQLParser.ListValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#listValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitListValue(_ ctx: GraphQLParser.ListValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#objectValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterObjectValue(_ ctx: GraphQLParser.ObjectValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#objectValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitObjectValue(_ ctx: GraphQLParser.ObjectValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#objectField}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterObjectField(_ ctx: GraphQLParser.ObjectFieldContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#objectField}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitObjectField(_ ctx: GraphQLParser.ObjectFieldContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#variable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariable(_ ctx: GraphQLParser.VariableContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#variable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariable(_ ctx: GraphQLParser.VariableContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#variableDefinitions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableDefinitions(_ ctx: GraphQLParser.VariableDefinitionsContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#variableDefinitions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableDefinitions(_ ctx: GraphQLParser.VariableDefinitionsContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#variableDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableDefinition(_ ctx: GraphQLParser.VariableDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#variableDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableDefinition(_ ctx: GraphQLParser.VariableDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#defaultValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefaultValue(_ ctx: GraphQLParser.DefaultValueContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#defaultValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefaultValue(_ ctx: GraphQLParser.DefaultValueContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#typeReference}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeReference(_ ctx: GraphQLParser.TypeReferenceContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#typeReference}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeReference(_ ctx: GraphQLParser.TypeReferenceContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#namedType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNamedType(_ ctx: GraphQLParser.NamedTypeContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#namedType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNamedType(_ ctx: GraphQLParser.NamedTypeContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#listType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterListType(_ ctx: GraphQLParser.ListTypeContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#listType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitListType(_ ctx: GraphQLParser.ListTypeContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#nonNullType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNonNullType(_ ctx: GraphQLParser.NonNullTypeContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#nonNullType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNonNullType(_ ctx: GraphQLParser.NonNullTypeContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#directives}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDirectives(_ ctx: GraphQLParser.DirectivesContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#directives}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDirectives(_ ctx: GraphQLParser.DirectivesContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#directive}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDirective(_ ctx: GraphQLParser.DirectiveContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#directive}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDirective(_ ctx: GraphQLParser.DirectiveContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#typeSystemDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeSystemDefinition(_ ctx: GraphQLParser.TypeSystemDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#typeSystemDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeSystemDefinition(_ ctx: GraphQLParser.TypeSystemDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#typeSystemExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeSystemExtension(_ ctx: GraphQLParser.TypeSystemExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#typeSystemExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeSystemExtension(_ ctx: GraphQLParser.TypeSystemExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#schemaDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSchemaDefinition(_ ctx: GraphQLParser.SchemaDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#schemaDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSchemaDefinition(_ ctx: GraphQLParser.SchemaDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#rootOperationTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRootOperationTypeDefinition(_ ctx: GraphQLParser.RootOperationTypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#rootOperationTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRootOperationTypeDefinition(_ ctx: GraphQLParser.RootOperationTypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#schemaExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSchemaExtension(_ ctx: GraphQLParser.SchemaExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#schemaExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSchemaExtension(_ ctx: GraphQLParser.SchemaExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#operationTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOperationTypeDefinition(_ ctx: GraphQLParser.OperationTypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#operationTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOperationTypeDefinition(_ ctx: GraphQLParser.OperationTypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#description}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDescription(_ ctx: GraphQLParser.DescriptionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#description}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDescription(_ ctx: GraphQLParser.DescriptionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#typeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeDefinition(_ ctx: GraphQLParser.TypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#typeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeDefinition(_ ctx: GraphQLParser.TypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#typeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeExtension(_ ctx: GraphQLParser.TypeExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#typeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeExtension(_ ctx: GraphQLParser.TypeExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#scalarTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterScalarTypeDefinition(_ ctx: GraphQLParser.ScalarTypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#scalarTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitScalarTypeDefinition(_ ctx: GraphQLParser.ScalarTypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#scalarTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterScalarTypeExtension(_ ctx: GraphQLParser.ScalarTypeExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#scalarTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitScalarTypeExtension(_ ctx: GraphQLParser.ScalarTypeExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#objectTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterObjectTypeDefinition(_ ctx: GraphQLParser.ObjectTypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#objectTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitObjectTypeDefinition(_ ctx: GraphQLParser.ObjectTypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#implementsInterfaces}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterImplementsInterfaces(_ ctx: GraphQLParser.ImplementsInterfacesContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#implementsInterfaces}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitImplementsInterfaces(_ ctx: GraphQLParser.ImplementsInterfacesContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#fieldsDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFieldsDefinition(_ ctx: GraphQLParser.FieldsDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#fieldsDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFieldsDefinition(_ ctx: GraphQLParser.FieldsDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#fieldDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFieldDefinition(_ ctx: GraphQLParser.FieldDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#fieldDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFieldDefinition(_ ctx: GraphQLParser.FieldDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#argumentsDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArgumentsDefinition(_ ctx: GraphQLParser.ArgumentsDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#argumentsDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArgumentsDefinition(_ ctx: GraphQLParser.ArgumentsDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#inputValueDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInputValueDefinition(_ ctx: GraphQLParser.InputValueDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#inputValueDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInputValueDefinition(_ ctx: GraphQLParser.InputValueDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#objectTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterObjectTypeExtension(_ ctx: GraphQLParser.ObjectTypeExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#objectTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitObjectTypeExtension(_ ctx: GraphQLParser.ObjectTypeExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#interfaceTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInterfaceTypeDefinition(_ ctx: GraphQLParser.InterfaceTypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#interfaceTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInterfaceTypeDefinition(_ ctx: GraphQLParser.InterfaceTypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#interfaceTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInterfaceTypeExtension(_ ctx: GraphQLParser.InterfaceTypeExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#interfaceTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInterfaceTypeExtension(_ ctx: GraphQLParser.InterfaceTypeExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#unionTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnionTypeDefinition(_ ctx: GraphQLParser.UnionTypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#unionTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnionTypeDefinition(_ ctx: GraphQLParser.UnionTypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#unionMemberTypes}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnionMemberTypes(_ ctx: GraphQLParser.UnionMemberTypesContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#unionMemberTypes}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnionMemberTypes(_ ctx: GraphQLParser.UnionMemberTypesContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#unionTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnionTypeExtension(_ ctx: GraphQLParser.UnionTypeExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#unionTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnionTypeExtension(_ ctx: GraphQLParser.UnionTypeExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#enumTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnumTypeDefinition(_ ctx: GraphQLParser.EnumTypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#enumTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnumTypeDefinition(_ ctx: GraphQLParser.EnumTypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#enumValuesDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnumValuesDefinition(_ ctx: GraphQLParser.EnumValuesDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#enumValuesDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnumValuesDefinition(_ ctx: GraphQLParser.EnumValuesDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#enumValueDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnumValueDefinition(_ ctx: GraphQLParser.EnumValueDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#enumValueDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnumValueDefinition(_ ctx: GraphQLParser.EnumValueDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#enumTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnumTypeExtension(_ ctx: GraphQLParser.EnumTypeExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#enumTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnumTypeExtension(_ ctx: GraphQLParser.EnumTypeExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#inputObjectTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInputObjectTypeDefinition(_ ctx: GraphQLParser.InputObjectTypeDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#inputObjectTypeDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInputObjectTypeDefinition(_ ctx: GraphQLParser.InputObjectTypeDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#inputFieldsDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInputFieldsDefinition(_ ctx: GraphQLParser.InputFieldsDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#inputFieldsDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInputFieldsDefinition(_ ctx: GraphQLParser.InputFieldsDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#inputObjectTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInputObjectTypeExtension(_ ctx: GraphQLParser.InputObjectTypeExtensionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#inputObjectTypeExtension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInputObjectTypeExtension(_ ctx: GraphQLParser.InputObjectTypeExtensionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#directiveDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDirectiveDefinition(_ ctx: GraphQLParser.DirectiveDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#directiveDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDirectiveDefinition(_ ctx: GraphQLParser.DirectiveDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#directiveLocations}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDirectiveLocations(_ ctx: GraphQLParser.DirectiveLocationsContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#directiveLocations}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDirectiveLocations(_ ctx: GraphQLParser.DirectiveLocationsContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#directiveLocation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDirectiveLocation(_ ctx: GraphQLParser.DirectiveLocationContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#directiveLocation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDirectiveLocation(_ ctx: GraphQLParser.DirectiveLocationContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#executableDirectiveLocation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExecutableDirectiveLocation(_ ctx: GraphQLParser.ExecutableDirectiveLocationContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#executableDirectiveLocation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExecutableDirectiveLocation(_ ctx: GraphQLParser.ExecutableDirectiveLocationContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#typeSystemDirectiveLocation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeSystemDirectiveLocation(_ ctx: GraphQLParser.TypeSystemDirectiveLocationContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#typeSystemDirectiveLocation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeSystemDirectiveLocation(_ ctx: GraphQLParser.TypeSystemDirectiveLocationContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterName(_ ctx: GraphQLParser.NameContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitName(_ ctx: GraphQLParser.NameContext)
	/**
	 * Enter a parse tree produced by {@link GraphQLParser#nameBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNameBase(_ ctx: GraphQLParser.NameBaseContext)
	/**
	 * Exit a parse tree produced by {@link GraphQLParser#nameBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNameBase(_ ctx: GraphQLParser.NameBaseContext)
}