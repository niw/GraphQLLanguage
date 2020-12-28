// Generated from Vendor/antlr4-graphql-grammar/src/main/antlr4/GraphQL.g4 by ANTLR 4.9
import Antlr4

internal class GraphQLParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = GraphQLParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(GraphQLParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	internal
	enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, 
                 T__6 = 7, T__7 = 8, T__8 = 9, T__9 = 10, T__10 = 11, T__11 = 12, 
                 T__12 = 13, T__13 = 14, TRUE = 15, FALSE = 16, NULL = 17, 
                 FRAGMENT = 18, QUERY = 19, MUTATION = 20, SUBSCRIPTION = 21, 
                 SCHEMA = 22, SCALAR = 23, TYPE = 24, INTERFACE = 25, IMPLEMENTS = 26, 
                 ENUM = 27, UNION = 28, INPUT = 29, EXTEND = 30, DIRECTIVE = 31, 
                 ON = 32, EXECUTABLE_DIRECTIVE_LOCATION = 33, TYPE_SYSTEM_DIRECTIVE_LOCATION = 34, 
                 NAME = 35, INT_VALUE = 36, INTEGER_PART = 37, FLOAT_VALUE = 38, 
                 STRING_VALUE = 39, UNICODE_BOM = 40, WHITE_SPACE = 41, 
                 LINE_TERMINATOR = 42, COMMENT = 43, COMMA = 44
	}

	internal
	static let RULE_document = 0, RULE_definition = 1, RULE_executableDefinition = 2, 
            RULE_operationDefinition = 3, RULE_operationType = 4, RULE_selectionSet = 5, 
            RULE_selection = 6, RULE_field = 7, RULE_arguments = 8, RULE_argument = 9, 
            RULE_alias = 10, RULE_fragmentSpread = 11, RULE_fragmentDefinition = 12, 
            RULE_fragmentName = 13, RULE_typeCondition = 14, RULE_inlineFragment = 15, 
            RULE_value = 16, RULE_intValue = 17, RULE_floatValue = 18, RULE_booleanValue = 19, 
            RULE_stringValue = 20, RULE_nullValue = 21, RULE_enumValue = 22, 
            RULE_listValue = 23, RULE_objectValue = 24, RULE_objectField = 25, 
            RULE_variable = 26, RULE_variableDefinitions = 27, RULE_variableDefinition = 28, 
            RULE_defaultValue = 29, RULE_typeReference = 30, RULE_namedType = 31, 
            RULE_listType = 32, RULE_nonNullType = 33, RULE_directives = 34, 
            RULE_directive = 35, RULE_typeSystemDefinition = 36, RULE_typeSystemExtension = 37, 
            RULE_schemaDefinition = 38, RULE_rootOperationTypeDefinition = 39, 
            RULE_schemaExtension = 40, RULE_operationTypeDefinition = 41, 
            RULE_description = 42, RULE_typeDefinition = 43, RULE_typeExtension = 44, 
            RULE_scalarTypeDefinition = 45, RULE_scalarTypeExtension = 46, 
            RULE_objectTypeDefinition = 47, RULE_implementsInterfaces = 48, 
            RULE_fieldsDefinition = 49, RULE_fieldDefinition = 50, RULE_argumentsDefinition = 51, 
            RULE_inputValueDefinition = 52, RULE_objectTypeExtension = 53, 
            RULE_interfaceTypeDefinition = 54, RULE_interfaceTypeExtension = 55, 
            RULE_unionTypeDefinition = 56, RULE_unionMemberTypes = 57, RULE_unionTypeExtension = 58, 
            RULE_enumTypeDefinition = 59, RULE_enumValuesDefinition = 60, 
            RULE_enumValueDefinition = 61, RULE_enumTypeExtension = 62, 
            RULE_inputObjectTypeDefinition = 63, RULE_inputFieldsDefinition = 64, 
            RULE_inputObjectTypeExtension = 65, RULE_directiveDefinition = 66, 
            RULE_directiveLocations = 67, RULE_directiveLocation = 68, RULE_executableDirectiveLocation = 69, 
            RULE_typeSystemDirectiveLocation = 70, RULE_name = 71, RULE_nameBase = 72

	internal
	static let ruleNames: [String] = [
		"document", "definition", "executableDefinition", "operationDefinition", 
		"operationType", "selectionSet", "selection", "field", "arguments", "argument", 
		"alias", "fragmentSpread", "fragmentDefinition", "fragmentName", "typeCondition", 
		"inlineFragment", "value", "intValue", "floatValue", "booleanValue", "stringValue", 
		"nullValue", "enumValue", "listValue", "objectValue", "objectField", "variable", 
		"variableDefinitions", "variableDefinition", "defaultValue", "typeReference", 
		"namedType", "listType", "nonNullType", "directives", "directive", "typeSystemDefinition", 
		"typeSystemExtension", "schemaDefinition", "rootOperationTypeDefinition", 
		"schemaExtension", "operationTypeDefinition", "description", "typeDefinition", 
		"typeExtension", "scalarTypeDefinition", "scalarTypeExtension", "objectTypeDefinition", 
		"implementsInterfaces", "fieldsDefinition", "fieldDefinition", "argumentsDefinition", 
		"inputValueDefinition", "objectTypeExtension", "interfaceTypeDefinition", 
		"interfaceTypeExtension", "unionTypeDefinition", "unionMemberTypes", "unionTypeExtension", 
		"enumTypeDefinition", "enumValuesDefinition", "enumValueDefinition", "enumTypeExtension", 
		"inputObjectTypeDefinition", "inputFieldsDefinition", "inputObjectTypeExtension", 
		"directiveDefinition", "directiveLocations", "directiveLocation", "executableDirectiveLocation", 
		"typeSystemDirectiveLocation", "name", "nameBase"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'{'", "'}'", "'('", "')'", "':'", "'...'", "'['", "']'", "'$'", 
		"'='", "'!'", "'@'", "'&'", "'|'", "'true'", "'false'", "'null'", "'fragment'", 
		"'query'", "'mutation'", "'subscription'", "'schema'", "'scalar'", "'type'", 
		"'interface'", "'implements'", "'enum'", "'union'", "'input'", "'extend'", 
		"'directive'", "'on'", nil, nil, nil, nil, nil, nil, nil, "'\u{FEFF}'", 
		nil, nil, nil, "','"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, "TRUE", "FALSE", "NULL", "FRAGMENT", "QUERY", "MUTATION", "SUBSCRIPTION", 
		"SCHEMA", "SCALAR", "TYPE", "INTERFACE", "IMPLEMENTS", "ENUM", "UNION", 
		"INPUT", "EXTEND", "DIRECTIVE", "ON", "EXECUTABLE_DIRECTIVE_LOCATION", 
		"TYPE_SYSTEM_DIRECTIVE_LOCATION", "NAME", "INT_VALUE", "INTEGER_PART", 
		"FLOAT_VALUE", "STRING_VALUE", "UNICODE_BOM", "WHITE_SPACE", "LINE_TERMINATOR", 
		"COMMENT", "COMMA"
	]
	internal
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override internal
	func getGrammarFileName() -> String { return "GraphQL.g4" }

	override internal
	func getRuleNames() -> [String] { return GraphQLParser.ruleNames }

	override internal
	func getSerializedATN() -> String { return GraphQLParser._serializedATN }

	override internal
	func getATN() -> ATN { return GraphQLParser._ATN }


	override internal
	func getVocabulary() -> Vocabulary {
	    return GraphQLParser.VOCABULARY
	}

	override internal
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.9", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,GraphQLParser._ATN,GraphQLParser._decisionToDFA, GraphQLParser._sharedContextCache)
	}


	internal class DocumentContext: ParserRuleContext {
			internal
			func definition() -> [DefinitionContext] {
				return getRuleContexts(DefinitionContext.self)
			}
			internal
			func definition(_ i: Int) -> DefinitionContext? {
				return getRuleContext(DefinitionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_document
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDocument(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDocument(self)
			}
		}
	}
	@discardableResult
	 internal func document() throws -> DocumentContext {
		var _localctx: DocumentContext = DocumentContext(_ctx, getState())
		try enterRule(_localctx, 0, GraphQLParser.RULE_document)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(147) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(146)
		 		try definition()


		 		setState(149); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.T__0.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.STRING_VALUE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class DefinitionContext: ParserRuleContext {
			internal
			func executableDefinition() -> ExecutableDefinitionContext? {
				return getRuleContext(ExecutableDefinitionContext.self, 0)
			}
			internal
			func typeSystemDefinition() -> TypeSystemDefinitionContext? {
				return getRuleContext(TypeSystemDefinitionContext.self, 0)
			}
			internal
			func typeSystemExtension() -> TypeSystemExtensionContext? {
				return getRuleContext(TypeSystemExtensionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_definition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func definition() throws -> DefinitionContext {
		var _localctx: DefinitionContext = DefinitionContext(_ctx, getState())
		try enterRule(_localctx, 2, GraphQLParser.RULE_definition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(154)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__0:fallthrough
		 	case .FRAGMENT:fallthrough
		 	case .QUERY:fallthrough
		 	case .MUTATION:fallthrough
		 	case .SUBSCRIPTION:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(151)
		 		try executableDefinition()

		 		break
		 	case .SCHEMA:fallthrough
		 	case .SCALAR:fallthrough
		 	case .TYPE:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .ENUM:fallthrough
		 	case .UNION:fallthrough
		 	case .INPUT:fallthrough
		 	case .DIRECTIVE:fallthrough
		 	case .STRING_VALUE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(152)
		 		try typeSystemDefinition()

		 		break

		 	case .EXTEND:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(153)
		 		try typeSystemExtension()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ExecutableDefinitionContext: ParserRuleContext {
			internal
			func operationDefinition() -> OperationDefinitionContext? {
				return getRuleContext(OperationDefinitionContext.self, 0)
			}
			internal
			func fragmentDefinition() -> FragmentDefinitionContext? {
				return getRuleContext(FragmentDefinitionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_executableDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterExecutableDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitExecutableDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func executableDefinition() throws -> ExecutableDefinitionContext {
		var _localctx: ExecutableDefinitionContext = ExecutableDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 4, GraphQLParser.RULE_executableDefinition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(158)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__0:fallthrough
		 	case .QUERY:fallthrough
		 	case .MUTATION:fallthrough
		 	case .SUBSCRIPTION:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(156)
		 		try operationDefinition()

		 		break

		 	case .FRAGMENT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(157)
		 		try fragmentDefinition()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class OperationDefinitionContext: ParserRuleContext {
			internal
			func operationType() -> OperationTypeContext? {
				return getRuleContext(OperationTypeContext.self, 0)
			}
			internal
			func selectionSet() -> SelectionSetContext? {
				return getRuleContext(SelectionSetContext.self, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func variableDefinitions() -> VariableDefinitionsContext? {
				return getRuleContext(VariableDefinitionsContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_operationDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterOperationDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitOperationDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func operationDefinition() throws -> OperationDefinitionContext {
		var _localctx: OperationDefinitionContext = OperationDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 6, GraphQLParser.RULE_operationDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(173)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .QUERY:fallthrough
		 	case .MUTATION:fallthrough
		 	case .SUBSCRIPTION:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(160)
		 		try operationType()
		 		setState(162)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, GraphQLParser.Tokens.TRUE.rawValue,GraphQLParser.Tokens.FALSE.rawValue,GraphQLParser.Tokens.NULL.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(161)
		 			try name()

		 		}

		 		setState(165)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__2.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(164)
		 			try variableDefinitions()

		 		}

		 		setState(168)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(167)
		 			try directives()

		 		}

		 		setState(170)
		 		try selectionSet()

		 		break

		 	case .T__0:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(172)
		 		try selectionSet()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class OperationTypeContext: ParserRuleContext {
			internal
			func QUERY() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.QUERY.rawValue, 0)
			}
			internal
			func MUTATION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.MUTATION.rawValue, 0)
			}
			internal
			func SUBSCRIPTION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.SUBSCRIPTION.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_operationType
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterOperationType(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitOperationType(self)
			}
		}
	}
	@discardableResult
	 internal func operationType() throws -> OperationTypeContext {
		var _localctx: OperationTypeContext = OperationTypeContext(_ctx, getState())
		try enterRule(_localctx, 8, GraphQLParser.RULE_operationType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(175)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class SelectionSetContext: ParserRuleContext {
			internal
			func selection() -> [SelectionContext] {
				return getRuleContexts(SelectionContext.self)
			}
			internal
			func selection(_ i: Int) -> SelectionContext? {
				return getRuleContext(SelectionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_selectionSet
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterSelectionSet(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitSelectionSet(self)
			}
		}
	}
	@discardableResult
	 internal func selectionSet() throws -> SelectionSetContext {
		var _localctx: SelectionSetContext = SelectionSetContext(_ctx, getState())
		try enterRule(_localctx, 10, GraphQLParser.RULE_selectionSet)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(177)
		 	try match(GraphQLParser.Tokens.T__0.rawValue)
		 	setState(179) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(178)
		 		try selection()


		 		setState(181); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.T__5.rawValue,GraphQLParser.Tokens.TRUE.rawValue,GraphQLParser.Tokens.FALSE.rawValue,GraphQLParser.Tokens.NULL.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())
		 	setState(183)
		 	try match(GraphQLParser.Tokens.T__1.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class SelectionContext: ParserRuleContext {
			internal
			func field() -> FieldContext? {
				return getRuleContext(FieldContext.self, 0)
			}
			internal
			func fragmentSpread() -> FragmentSpreadContext? {
				return getRuleContext(FragmentSpreadContext.self, 0)
			}
			internal
			func inlineFragment() -> InlineFragmentContext? {
				return getRuleContext(InlineFragmentContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_selection
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterSelection(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitSelection(self)
			}
		}
	}
	@discardableResult
	 internal func selection() throws -> SelectionContext {
		var _localctx: SelectionContext = SelectionContext(_ctx, getState())
		try enterRule(_localctx, 12, GraphQLParser.RULE_selection)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(188)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,8, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(185)
		 		try field()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(186)
		 		try fragmentSpread()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(187)
		 		try inlineFragment()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class FieldContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func alias() -> AliasContext? {
				return getRuleContext(AliasContext.self, 0)
			}
			internal
			func arguments() -> ArgumentsContext? {
				return getRuleContext(ArgumentsContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			internal
			func selectionSet() -> SelectionSetContext? {
				return getRuleContext(SelectionSetContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_field
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterField(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitField(self)
			}
		}
	}
	@discardableResult
	 internal func field() throws -> FieldContext {
		var _localctx: FieldContext = FieldContext(_ctx, getState())
		try enterRule(_localctx, 14, GraphQLParser.RULE_field)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(191)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,9,_ctx)) {
		 	case 1:
		 		setState(190)
		 		try alias()

		 		break
		 	default: break
		 	}
		 	setState(193)
		 	try name()
		 	setState(195)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(194)
		 		try arguments()

		 	}

		 	setState(198)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(197)
		 		try directives()

		 	}

		 	setState(201)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__0.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(200)
		 		try selectionSet()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ArgumentsContext: ParserRuleContext {
			internal
			func argument() -> [ArgumentContext] {
				return getRuleContexts(ArgumentContext.self)
			}
			internal
			func argument(_ i: Int) -> ArgumentContext? {
				return getRuleContext(ArgumentContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_arguments
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterArguments(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitArguments(self)
			}
		}
	}
	@discardableResult
	 internal func arguments() throws -> ArgumentsContext {
		var _localctx: ArgumentsContext = ArgumentsContext(_ctx, getState())
		try enterRule(_localctx, 16, GraphQLParser.RULE_arguments)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(203)
		 	try match(GraphQLParser.Tokens.T__2.rawValue)
		 	setState(205) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(204)
		 		try argument()


		 		setState(207); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.TRUE.rawValue,GraphQLParser.Tokens.FALSE.rawValue,GraphQLParser.Tokens.NULL.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())
		 	setState(209)
		 	try match(GraphQLParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ArgumentContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func value() -> ValueContext? {
				return getRuleContext(ValueContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_argument
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterArgument(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitArgument(self)
			}
		}
	}
	@discardableResult
	 internal func argument() throws -> ArgumentContext {
		var _localctx: ArgumentContext = ArgumentContext(_ctx, getState())
		try enterRule(_localctx, 18, GraphQLParser.RULE_argument)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(211)
		 	try name()
		 	setState(212)
		 	try match(GraphQLParser.Tokens.T__4.rawValue)
		 	setState(213)
		 	try value()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class AliasContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_alias
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterAlias(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitAlias(self)
			}
		}
	}
	@discardableResult
	 internal func alias() throws -> AliasContext {
		var _localctx: AliasContext = AliasContext(_ctx, getState())
		try enterRule(_localctx, 20, GraphQLParser.RULE_alias)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(215)
		 	try name()
		 	setState(216)
		 	try match(GraphQLParser.Tokens.T__4.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class FragmentSpreadContext: ParserRuleContext {
			internal
			func fragmentName() -> FragmentNameContext? {
				return getRuleContext(FragmentNameContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fragmentSpread
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFragmentSpread(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFragmentSpread(self)
			}
		}
	}
	@discardableResult
	 internal func fragmentSpread() throws -> FragmentSpreadContext {
		var _localctx: FragmentSpreadContext = FragmentSpreadContext(_ctx, getState())
		try enterRule(_localctx, 22, GraphQLParser.RULE_fragmentSpread)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(218)
		 	try match(GraphQLParser.Tokens.T__5.rawValue)
		 	setState(219)
		 	try fragmentName()
		 	setState(221)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(220)
		 		try directives()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class FragmentDefinitionContext: ParserRuleContext {
			internal
			func FRAGMENT() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.FRAGMENT.rawValue, 0)
			}
			internal
			func fragmentName() -> FragmentNameContext? {
				return getRuleContext(FragmentNameContext.self, 0)
			}
			internal
			func typeCondition() -> TypeConditionContext? {
				return getRuleContext(TypeConditionContext.self, 0)
			}
			internal
			func selectionSet() -> SelectionSetContext? {
				return getRuleContext(SelectionSetContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fragmentDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFragmentDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFragmentDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func fragmentDefinition() throws -> FragmentDefinitionContext {
		var _localctx: FragmentDefinitionContext = FragmentDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 24, GraphQLParser.RULE_fragmentDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(223)
		 	try match(GraphQLParser.Tokens.FRAGMENT.rawValue)
		 	setState(224)
		 	try fragmentName()
		 	setState(225)
		 	try typeCondition()
		 	setState(227)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(226)
		 		try directives()

		 	}

		 	setState(229)
		 	try selectionSet()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class FragmentNameContext: ParserRuleContext {
			internal
			func nameBase() -> NameBaseContext? {
				return getRuleContext(NameBaseContext.self, 0)
			}
			internal
			func TRUE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.TRUE.rawValue, 0)
			}
			internal
			func FALSE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.FALSE.rawValue, 0)
			}
			internal
			func NULL() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NULL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fragmentName
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFragmentName(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFragmentName(self)
			}
		}
	}
	@discardableResult
	 internal func fragmentName() throws -> FragmentNameContext {
		var _localctx: FragmentNameContext = FragmentNameContext(_ctx, getState())
		try enterRule(_localctx, 26, GraphQLParser.RULE_fragmentName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(235)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .FRAGMENT:fallthrough
		 	case .QUERY:fallthrough
		 	case .MUTATION:fallthrough
		 	case .SUBSCRIPTION:fallthrough
		 	case .SCHEMA:fallthrough
		 	case .SCALAR:fallthrough
		 	case .TYPE:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .IMPLEMENTS:fallthrough
		 	case .ENUM:fallthrough
		 	case .UNION:fallthrough
		 	case .INPUT:fallthrough
		 	case .EXTEND:fallthrough
		 	case .DIRECTIVE:fallthrough
		 	case .EXECUTABLE_DIRECTIVE_LOCATION:fallthrough
		 	case .TYPE_SYSTEM_DIRECTIVE_LOCATION:fallthrough
		 	case .NAME:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(231)
		 		try nameBase()

		 		break

		 	case .TRUE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(232)
		 		try match(GraphQLParser.Tokens.TRUE.rawValue)

		 		break

		 	case .FALSE:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(233)
		 		try match(GraphQLParser.Tokens.FALSE.rawValue)

		 		break

		 	case .NULL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(234)
		 		try match(GraphQLParser.Tokens.NULL.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class TypeConditionContext: ParserRuleContext {
			internal
			func ON() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.ON.rawValue, 0)
			}
			internal
			func namedType() -> NamedTypeContext? {
				return getRuleContext(NamedTypeContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeCondition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeCondition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeCondition(self)
			}
		}
	}
	@discardableResult
	 internal func typeCondition() throws -> TypeConditionContext {
		var _localctx: TypeConditionContext = TypeConditionContext(_ctx, getState())
		try enterRule(_localctx, 28, GraphQLParser.RULE_typeCondition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(237)
		 	try match(GraphQLParser.Tokens.ON.rawValue)
		 	setState(238)
		 	try namedType()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class InlineFragmentContext: ParserRuleContext {
			internal
			func selectionSet() -> SelectionSetContext? {
				return getRuleContext(SelectionSetContext.self, 0)
			}
			internal
			func typeCondition() -> TypeConditionContext? {
				return getRuleContext(TypeConditionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_inlineFragment
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterInlineFragment(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitInlineFragment(self)
			}
		}
	}
	@discardableResult
	 internal func inlineFragment() throws -> InlineFragmentContext {
		var _localctx: InlineFragmentContext = InlineFragmentContext(_ctx, getState())
		try enterRule(_localctx, 30, GraphQLParser.RULE_inlineFragment)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(240)
		 	try match(GraphQLParser.Tokens.T__5.rawValue)
		 	setState(242)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.ON.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(241)
		 		try typeCondition()

		 	}

		 	setState(245)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(244)
		 		try directives()

		 	}

		 	setState(247)
		 	try selectionSet()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ValueContext: ParserRuleContext {
			internal
			func variable() -> VariableContext? {
				return getRuleContext(VariableContext.self, 0)
			}
			internal
			func intValue() -> IntValueContext? {
				return getRuleContext(IntValueContext.self, 0)
			}
			internal
			func floatValue() -> FloatValueContext? {
				return getRuleContext(FloatValueContext.self, 0)
			}
			internal
			func stringValue() -> StringValueContext? {
				return getRuleContext(StringValueContext.self, 0)
			}
			internal
			func booleanValue() -> BooleanValueContext? {
				return getRuleContext(BooleanValueContext.self, 0)
			}
			internal
			func nullValue() -> NullValueContext? {
				return getRuleContext(NullValueContext.self, 0)
			}
			internal
			func enumValue() -> EnumValueContext? {
				return getRuleContext(EnumValueContext.self, 0)
			}
			internal
			func listValue() -> ListValueContext? {
				return getRuleContext(ListValueContext.self, 0)
			}
			internal
			func objectValue() -> ObjectValueContext? {
				return getRuleContext(ObjectValueContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_value
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitValue(self)
			}
		}
	}
	@discardableResult
	 internal func value() throws -> ValueContext {
		var _localctx: ValueContext = ValueContext(_ctx, getState())
		try enterRule(_localctx, 32, GraphQLParser.RULE_value)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(258)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__8:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(249)
		 		try variable()

		 		break

		 	case .INT_VALUE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(250)
		 		try intValue()

		 		break

		 	case .FLOAT_VALUE:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(251)
		 		try floatValue()

		 		break

		 	case .STRING_VALUE:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(252)
		 		try stringValue()

		 		break
		 	case .TRUE:fallthrough
		 	case .FALSE:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(253)
		 		try booleanValue()

		 		break

		 	case .NULL:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(254)
		 		try nullValue()

		 		break
		 	case .FRAGMENT:fallthrough
		 	case .QUERY:fallthrough
		 	case .MUTATION:fallthrough
		 	case .SUBSCRIPTION:fallthrough
		 	case .SCHEMA:fallthrough
		 	case .SCALAR:fallthrough
		 	case .TYPE:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .IMPLEMENTS:fallthrough
		 	case .ENUM:fallthrough
		 	case .UNION:fallthrough
		 	case .INPUT:fallthrough
		 	case .EXTEND:fallthrough
		 	case .DIRECTIVE:fallthrough
		 	case .ON:fallthrough
		 	case .EXECUTABLE_DIRECTIVE_LOCATION:fallthrough
		 	case .TYPE_SYSTEM_DIRECTIVE_LOCATION:fallthrough
		 	case .NAME:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(255)
		 		try enumValue()

		 		break

		 	case .T__6:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(256)
		 		try listValue()

		 		break

		 	case .T__0:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(257)
		 		try objectValue()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class IntValueContext: ParserRuleContext {
			internal
			func INT_VALUE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.INT_VALUE.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_intValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterIntValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitIntValue(self)
			}
		}
	}
	@discardableResult
	 internal func intValue() throws -> IntValueContext {
		var _localctx: IntValueContext = IntValueContext(_ctx, getState())
		try enterRule(_localctx, 34, GraphQLParser.RULE_intValue)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(260)
		 	try match(GraphQLParser.Tokens.INT_VALUE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class FloatValueContext: ParserRuleContext {
			internal
			func FLOAT_VALUE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.FLOAT_VALUE.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_floatValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFloatValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFloatValue(self)
			}
		}
	}
	@discardableResult
	 internal func floatValue() throws -> FloatValueContext {
		var _localctx: FloatValueContext = FloatValueContext(_ctx, getState())
		try enterRule(_localctx, 36, GraphQLParser.RULE_floatValue)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(262)
		 	try match(GraphQLParser.Tokens.FLOAT_VALUE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class BooleanValueContext: ParserRuleContext {
			internal
			func TRUE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.TRUE.rawValue, 0)
			}
			internal
			func FALSE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.FALSE.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_booleanValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterBooleanValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitBooleanValue(self)
			}
		}
	}
	@discardableResult
	 internal func booleanValue() throws -> BooleanValueContext {
		var _localctx: BooleanValueContext = BooleanValueContext(_ctx, getState())
		try enterRule(_localctx, 38, GraphQLParser.RULE_booleanValue)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(264)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.TRUE.rawValue || _la == GraphQLParser.Tokens.FALSE.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class StringValueContext: ParserRuleContext {
			internal
			func STRING_VALUE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.STRING_VALUE.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_stringValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterStringValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitStringValue(self)
			}
		}
	}
	@discardableResult
	 internal func stringValue() throws -> StringValueContext {
		var _localctx: StringValueContext = StringValueContext(_ctx, getState())
		try enterRule(_localctx, 40, GraphQLParser.RULE_stringValue)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(266)
		 	try match(GraphQLParser.Tokens.STRING_VALUE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class NullValueContext: ParserRuleContext {
			internal
			func NULL() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NULL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_nullValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterNullValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitNullValue(self)
			}
		}
	}
	@discardableResult
	 internal func nullValue() throws -> NullValueContext {
		var _localctx: NullValueContext = NullValueContext(_ctx, getState())
		try enterRule(_localctx, 42, GraphQLParser.RULE_nullValue)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(268)
		 	try match(GraphQLParser.Tokens.NULL.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class EnumValueContext: ParserRuleContext {
			internal
			func nameBase() -> NameBaseContext? {
				return getRuleContext(NameBaseContext.self, 0)
			}
			internal
			func ON() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.ON.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_enumValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterEnumValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitEnumValue(self)
			}
		}
	}
	@discardableResult
	 internal func enumValue() throws -> EnumValueContext {
		var _localctx: EnumValueContext = EnumValueContext(_ctx, getState())
		try enterRule(_localctx, 44, GraphQLParser.RULE_enumValue)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(272)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .FRAGMENT:fallthrough
		 	case .QUERY:fallthrough
		 	case .MUTATION:fallthrough
		 	case .SUBSCRIPTION:fallthrough
		 	case .SCHEMA:fallthrough
		 	case .SCALAR:fallthrough
		 	case .TYPE:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .IMPLEMENTS:fallthrough
		 	case .ENUM:fallthrough
		 	case .UNION:fallthrough
		 	case .INPUT:fallthrough
		 	case .EXTEND:fallthrough
		 	case .DIRECTIVE:fallthrough
		 	case .EXECUTABLE_DIRECTIVE_LOCATION:fallthrough
		 	case .TYPE_SYSTEM_DIRECTIVE_LOCATION:fallthrough
		 	case .NAME:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(270)
		 		try nameBase()

		 		break

		 	case .ON:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(271)
		 		try match(GraphQLParser.Tokens.ON.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ListValueContext: ParserRuleContext {
			internal
			func value() -> [ValueContext] {
				return getRuleContexts(ValueContext.self)
			}
			internal
			func value(_ i: Int) -> ValueContext? {
				return getRuleContext(ValueContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_listValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterListValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitListValue(self)
			}
		}
	}
	@discardableResult
	 internal func listValue() throws -> ListValueContext {
		var _localctx: ListValueContext = ListValueContext(_ctx, getState())
		try enterRule(_localctx, 46, GraphQLParser.RULE_listValue)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(284)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,22, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(274)
		 		try match(GraphQLParser.Tokens.T__6.rawValue)
		 		setState(275)
		 		try match(GraphQLParser.Tokens.T__7.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(276)
		 		try match(GraphQLParser.Tokens.T__6.rawValue)
		 		setState(278) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(277)
		 			try value()


		 			setState(280); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, GraphQLParser.Tokens.T__0.rawValue,GraphQLParser.Tokens.T__6.rawValue,GraphQLParser.Tokens.T__8.rawValue,GraphQLParser.Tokens.TRUE.rawValue,GraphQLParser.Tokens.FALSE.rawValue,GraphQLParser.Tokens.NULL.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue,GraphQLParser.Tokens.INT_VALUE.rawValue,GraphQLParser.Tokens.FLOAT_VALUE.rawValue,GraphQLParser.Tokens.STRING_VALUE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }())
		 		setState(282)
		 		try match(GraphQLParser.Tokens.T__7.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ObjectValueContext: ParserRuleContext {
			internal
			func objectField() -> [ObjectFieldContext] {
				return getRuleContexts(ObjectFieldContext.self)
			}
			internal
			func objectField(_ i: Int) -> ObjectFieldContext? {
				return getRuleContext(ObjectFieldContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_objectValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterObjectValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitObjectValue(self)
			}
		}
	}
	@discardableResult
	 internal func objectValue() throws -> ObjectValueContext {
		var _localctx: ObjectValueContext = ObjectValueContext(_ctx, getState())
		try enterRule(_localctx, 48, GraphQLParser.RULE_objectValue)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(296)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,24, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(286)
		 		try match(GraphQLParser.Tokens.T__0.rawValue)
		 		setState(287)
		 		try match(GraphQLParser.Tokens.T__1.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(288)
		 		try match(GraphQLParser.Tokens.T__0.rawValue)
		 		setState(290) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(289)
		 			try objectField()


		 			setState(292); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, GraphQLParser.Tokens.TRUE.rawValue,GraphQLParser.Tokens.FALSE.rawValue,GraphQLParser.Tokens.NULL.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }())
		 		setState(294)
		 		try match(GraphQLParser.Tokens.T__1.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ObjectFieldContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func value() -> ValueContext? {
				return getRuleContext(ValueContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_objectField
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterObjectField(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitObjectField(self)
			}
		}
	}
	@discardableResult
	 internal func objectField() throws -> ObjectFieldContext {
		var _localctx: ObjectFieldContext = ObjectFieldContext(_ctx, getState())
		try enterRule(_localctx, 50, GraphQLParser.RULE_objectField)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(298)
		 	try name()
		 	setState(299)
		 	try match(GraphQLParser.Tokens.T__4.rawValue)
		 	setState(300)
		 	try value()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class VariableContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_variable
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterVariable(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitVariable(self)
			}
		}
	}
	@discardableResult
	 internal func variable() throws -> VariableContext {
		var _localctx: VariableContext = VariableContext(_ctx, getState())
		try enterRule(_localctx, 52, GraphQLParser.RULE_variable)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(302)
		 	try match(GraphQLParser.Tokens.T__8.rawValue)
		 	setState(303)
		 	try name()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class VariableDefinitionsContext: ParserRuleContext {
			internal
			func variableDefinition() -> [VariableDefinitionContext] {
				return getRuleContexts(VariableDefinitionContext.self)
			}
			internal
			func variableDefinition(_ i: Int) -> VariableDefinitionContext? {
				return getRuleContext(VariableDefinitionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_variableDefinitions
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterVariableDefinitions(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitVariableDefinitions(self)
			}
		}
	}
	@discardableResult
	 internal func variableDefinitions() throws -> VariableDefinitionsContext {
		var _localctx: VariableDefinitionsContext = VariableDefinitionsContext(_ctx, getState())
		try enterRule(_localctx, 54, GraphQLParser.RULE_variableDefinitions)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(305)
		 	try match(GraphQLParser.Tokens.T__2.rawValue)
		 	setState(307) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(306)
		 		try variableDefinition()


		 		setState(309); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__8.rawValue
		 	      return testSet
		 	 }())
		 	setState(311)
		 	try match(GraphQLParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class VariableDefinitionContext: ParserRuleContext {
			internal
			func variable() -> VariableContext? {
				return getRuleContext(VariableContext.self, 0)
			}
			internal
			func typeReference() -> TypeReferenceContext? {
				return getRuleContext(TypeReferenceContext.self, 0)
			}
			internal
			func defaultValue() -> DefaultValueContext? {
				return getRuleContext(DefaultValueContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_variableDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterVariableDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitVariableDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func variableDefinition() throws -> VariableDefinitionContext {
		var _localctx: VariableDefinitionContext = VariableDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 56, GraphQLParser.RULE_variableDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(313)
		 	try variable()
		 	setState(314)
		 	try match(GraphQLParser.Tokens.T__4.rawValue)
		 	setState(315)
		 	try typeReference()
		 	setState(317)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__9.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(316)
		 		try defaultValue()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class DefaultValueContext: ParserRuleContext {
			internal
			func value() -> ValueContext? {
				return getRuleContext(ValueContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_defaultValue
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDefaultValue(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDefaultValue(self)
			}
		}
	}
	@discardableResult
	 internal func defaultValue() throws -> DefaultValueContext {
		var _localctx: DefaultValueContext = DefaultValueContext(_ctx, getState())
		try enterRule(_localctx, 58, GraphQLParser.RULE_defaultValue)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(319)
		 	try match(GraphQLParser.Tokens.T__9.rawValue)
		 	setState(320)
		 	try value()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class TypeReferenceContext: ParserRuleContext {
			internal
			func namedType() -> NamedTypeContext? {
				return getRuleContext(NamedTypeContext.self, 0)
			}
			internal
			func listType() -> ListTypeContext? {
				return getRuleContext(ListTypeContext.self, 0)
			}
			internal
			func nonNullType() -> NonNullTypeContext? {
				return getRuleContext(NonNullTypeContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeReference
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeReference(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeReference(self)
			}
		}
	}
	@discardableResult
	 internal func typeReference() throws -> TypeReferenceContext {
		var _localctx: TypeReferenceContext = TypeReferenceContext(_ctx, getState())
		try enterRule(_localctx, 60, GraphQLParser.RULE_typeReference)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(325)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,27, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(322)
		 		try namedType()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(323)
		 		try listType()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(324)
		 		try nonNullType()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class NamedTypeContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_namedType
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterNamedType(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitNamedType(self)
			}
		}
	}
	@discardableResult
	 internal func namedType() throws -> NamedTypeContext {
		var _localctx: NamedTypeContext = NamedTypeContext(_ctx, getState())
		try enterRule(_localctx, 62, GraphQLParser.RULE_namedType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(327)
		 	try name()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ListTypeContext: ParserRuleContext {
			internal
			func typeReference() -> TypeReferenceContext? {
				return getRuleContext(TypeReferenceContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_listType
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterListType(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitListType(self)
			}
		}
	}
	@discardableResult
	 internal func listType() throws -> ListTypeContext {
		var _localctx: ListTypeContext = ListTypeContext(_ctx, getState())
		try enterRule(_localctx, 64, GraphQLParser.RULE_listType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(329)
		 	try match(GraphQLParser.Tokens.T__6.rawValue)
		 	setState(330)
		 	try typeReference()
		 	setState(331)
		 	try match(GraphQLParser.Tokens.T__7.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class NonNullTypeContext: ParserRuleContext {
			internal
			func namedType() -> NamedTypeContext? {
				return getRuleContext(NamedTypeContext.self, 0)
			}
			internal
			func listType() -> ListTypeContext? {
				return getRuleContext(ListTypeContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_nonNullType
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterNonNullType(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitNonNullType(self)
			}
		}
	}
	@discardableResult
	 internal func nonNullType() throws -> NonNullTypeContext {
		var _localctx: NonNullTypeContext = NonNullTypeContext(_ctx, getState())
		try enterRule(_localctx, 66, GraphQLParser.RULE_nonNullType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(339)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .TRUE:fallthrough
		 	case .FALSE:fallthrough
		 	case .NULL:fallthrough
		 	case .FRAGMENT:fallthrough
		 	case .QUERY:fallthrough
		 	case .MUTATION:fallthrough
		 	case .SUBSCRIPTION:fallthrough
		 	case .SCHEMA:fallthrough
		 	case .SCALAR:fallthrough
		 	case .TYPE:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .IMPLEMENTS:fallthrough
		 	case .ENUM:fallthrough
		 	case .UNION:fallthrough
		 	case .INPUT:fallthrough
		 	case .EXTEND:fallthrough
		 	case .DIRECTIVE:fallthrough
		 	case .ON:fallthrough
		 	case .EXECUTABLE_DIRECTIVE_LOCATION:fallthrough
		 	case .TYPE_SYSTEM_DIRECTIVE_LOCATION:fallthrough
		 	case .NAME:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(333)
		 		try namedType()
		 		setState(334)
		 		try match(GraphQLParser.Tokens.T__10.rawValue)

		 		break

		 	case .T__6:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(336)
		 		try listType()
		 		setState(337)
		 		try match(GraphQLParser.Tokens.T__10.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class DirectivesContext: ParserRuleContext {
			internal
			func directive() -> [DirectiveContext] {
				return getRuleContexts(DirectiveContext.self)
			}
			internal
			func directive(_ i: Int) -> DirectiveContext? {
				return getRuleContext(DirectiveContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_directives
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDirectives(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDirectives(self)
			}
		}
	}
	@discardableResult
	 internal func directives() throws -> DirectivesContext {
		var _localctx: DirectivesContext = DirectivesContext(_ctx, getState())
		try enterRule(_localctx, 68, GraphQLParser.RULE_directives)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(342) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(341)
		 		try directive()


		 		setState(344); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }())

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class DirectiveContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func arguments() -> ArgumentsContext? {
				return getRuleContext(ArgumentsContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_directive
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDirective(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDirective(self)
			}
		}
	}
	@discardableResult
	 internal func directive() throws -> DirectiveContext {
		var _localctx: DirectiveContext = DirectiveContext(_ctx, getState())
		try enterRule(_localctx, 70, GraphQLParser.RULE_directive)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(346)
		 	try match(GraphQLParser.Tokens.T__11.rawValue)
		 	setState(347)
		 	try name()
		 	setState(349)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(348)
		 		try arguments()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class TypeSystemDefinitionContext: ParserRuleContext {
			internal
			func schemaDefinition() -> SchemaDefinitionContext? {
				return getRuleContext(SchemaDefinitionContext.self, 0)
			}
			internal
			func typeDefinition() -> TypeDefinitionContext? {
				return getRuleContext(TypeDefinitionContext.self, 0)
			}
			internal
			func directiveDefinition() -> DirectiveDefinitionContext? {
				return getRuleContext(DirectiveDefinitionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeSystemDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeSystemDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeSystemDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func typeSystemDefinition() throws -> TypeSystemDefinitionContext {
		var _localctx: TypeSystemDefinitionContext = TypeSystemDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 72, GraphQLParser.RULE_typeSystemDefinition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(354)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,31, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(351)
		 		try schemaDefinition()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(352)
		 		try typeDefinition()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(353)
		 		try directiveDefinition()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class TypeSystemExtensionContext: ParserRuleContext {
			internal
			func schemaExtension() -> SchemaExtensionContext? {
				return getRuleContext(SchemaExtensionContext.self, 0)
			}
			internal
			func typeExtension() -> TypeExtensionContext? {
				return getRuleContext(TypeExtensionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeSystemExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeSystemExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeSystemExtension(self)
			}
		}
	}
	@discardableResult
	 internal func typeSystemExtension() throws -> TypeSystemExtensionContext {
		var _localctx: TypeSystemExtensionContext = TypeSystemExtensionContext(_ctx, getState())
		try enterRule(_localctx, 74, GraphQLParser.RULE_typeSystemExtension)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(358)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,32, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(356)
		 		try schemaExtension()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(357)
		 		try typeExtension()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class SchemaDefinitionContext: ParserRuleContext {
			internal
			func SCHEMA() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.SCHEMA.rawValue, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			internal
			func rootOperationTypeDefinition() -> [RootOperationTypeDefinitionContext] {
				return getRuleContexts(RootOperationTypeDefinitionContext.self)
			}
			internal
			func rootOperationTypeDefinition(_ i: Int) -> RootOperationTypeDefinitionContext? {
				return getRuleContext(RootOperationTypeDefinitionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_schemaDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterSchemaDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitSchemaDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func schemaDefinition() throws -> SchemaDefinitionContext {
		var _localctx: SchemaDefinitionContext = SchemaDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 76, GraphQLParser.RULE_schemaDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(360)
		 	try match(GraphQLParser.Tokens.SCHEMA.rawValue)
		 	setState(362)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(361)
		 		try directives()

		 	}

		 	setState(364)
		 	try match(GraphQLParser.Tokens.T__0.rawValue)
		 	setState(366) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(365)
		 		try rootOperationTypeDefinition()


		 		setState(368); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())
		 	setState(370)
		 	try match(GraphQLParser.Tokens.T__1.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class RootOperationTypeDefinitionContext: ParserRuleContext {
			internal
			func operationType() -> OperationTypeContext? {
				return getRuleContext(OperationTypeContext.self, 0)
			}
			internal
			func namedType() -> NamedTypeContext? {
				return getRuleContext(NamedTypeContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_rootOperationTypeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterRootOperationTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitRootOperationTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func rootOperationTypeDefinition() throws -> RootOperationTypeDefinitionContext {
		var _localctx: RootOperationTypeDefinitionContext = RootOperationTypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 78, GraphQLParser.RULE_rootOperationTypeDefinition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(372)
		 	try operationType()
		 	setState(373)
		 	try match(GraphQLParser.Tokens.T__4.rawValue)
		 	setState(374)
		 	try namedType()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class SchemaExtensionContext: ParserRuleContext {
			internal
			func EXTEND() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXTEND.rawValue, 0)
			}
			internal
			func SCHEMA() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.SCHEMA.rawValue, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			internal
			func operationTypeDefinition() -> [OperationTypeDefinitionContext] {
				return getRuleContexts(OperationTypeDefinitionContext.self)
			}
			internal
			func operationTypeDefinition(_ i: Int) -> OperationTypeDefinitionContext? {
				return getRuleContext(OperationTypeDefinitionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_schemaExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterSchemaExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitSchemaExtension(self)
			}
		}
	}
	@discardableResult
	 internal func schemaExtension() throws -> SchemaExtensionContext {
		var _localctx: SchemaExtensionContext = SchemaExtensionContext(_ctx, getState())
		try enterRule(_localctx, 80, GraphQLParser.RULE_schemaExtension)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(392)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,37, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(376)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(377)
		 		try match(GraphQLParser.Tokens.SCHEMA.rawValue)
		 		setState(379)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(378)
		 			try directives()

		 		}

		 		setState(381)
		 		try match(GraphQLParser.Tokens.T__0.rawValue)
		 		setState(383) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(382)
		 			try operationTypeDefinition()


		 			setState(385); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }())
		 		setState(387)
		 		try match(GraphQLParser.Tokens.T__1.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(389)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(390)
		 		try match(GraphQLParser.Tokens.SCHEMA.rawValue)
		 		setState(391)
		 		try directives()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class OperationTypeDefinitionContext: ParserRuleContext {
			internal
			func operationType() -> OperationTypeContext? {
				return getRuleContext(OperationTypeContext.self, 0)
			}
			internal
			func namedType() -> NamedTypeContext? {
				return getRuleContext(NamedTypeContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_operationTypeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterOperationTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitOperationTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func operationTypeDefinition() throws -> OperationTypeDefinitionContext {
		var _localctx: OperationTypeDefinitionContext = OperationTypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 82, GraphQLParser.RULE_operationTypeDefinition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(394)
		 	try operationType()
		 	setState(395)
		 	try match(GraphQLParser.Tokens.T__4.rawValue)
		 	setState(396)
		 	try namedType()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class DescriptionContext: ParserRuleContext {
			internal
			func stringValue() -> StringValueContext? {
				return getRuleContext(StringValueContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_description
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDescription(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDescription(self)
			}
		}
	}
	@discardableResult
	 internal func description() throws -> DescriptionContext {
		var _localctx: DescriptionContext = DescriptionContext(_ctx, getState())
		try enterRule(_localctx, 84, GraphQLParser.RULE_description)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(398)
		 	try stringValue()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class TypeDefinitionContext: ParserRuleContext {
			internal
			func scalarTypeDefinition() -> ScalarTypeDefinitionContext? {
				return getRuleContext(ScalarTypeDefinitionContext.self, 0)
			}
			internal
			func objectTypeDefinition() -> ObjectTypeDefinitionContext? {
				return getRuleContext(ObjectTypeDefinitionContext.self, 0)
			}
			internal
			func interfaceTypeDefinition() -> InterfaceTypeDefinitionContext? {
				return getRuleContext(InterfaceTypeDefinitionContext.self, 0)
			}
			internal
			func unionTypeDefinition() -> UnionTypeDefinitionContext? {
				return getRuleContext(UnionTypeDefinitionContext.self, 0)
			}
			internal
			func enumTypeDefinition() -> EnumTypeDefinitionContext? {
				return getRuleContext(EnumTypeDefinitionContext.self, 0)
			}
			internal
			func inputObjectTypeDefinition() -> InputObjectTypeDefinitionContext? {
				return getRuleContext(InputObjectTypeDefinitionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func typeDefinition() throws -> TypeDefinitionContext {
		var _localctx: TypeDefinitionContext = TypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 86, GraphQLParser.RULE_typeDefinition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(406)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,38, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(400)
		 		try scalarTypeDefinition()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(401)
		 		try objectTypeDefinition()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(402)
		 		try interfaceTypeDefinition()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(403)
		 		try unionTypeDefinition()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(404)
		 		try enumTypeDefinition()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(405)
		 		try inputObjectTypeDefinition()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class TypeExtensionContext: ParserRuleContext {
			internal
			func scalarTypeExtension() -> ScalarTypeExtensionContext? {
				return getRuleContext(ScalarTypeExtensionContext.self, 0)
			}
			internal
			func objectTypeExtension() -> ObjectTypeExtensionContext? {
				return getRuleContext(ObjectTypeExtensionContext.self, 0)
			}
			internal
			func interfaceTypeExtension() -> InterfaceTypeExtensionContext? {
				return getRuleContext(InterfaceTypeExtensionContext.self, 0)
			}
			internal
			func unionTypeExtension() -> UnionTypeExtensionContext? {
				return getRuleContext(UnionTypeExtensionContext.self, 0)
			}
			internal
			func enumTypeExtension() -> EnumTypeExtensionContext? {
				return getRuleContext(EnumTypeExtensionContext.self, 0)
			}
			internal
			func inputObjectTypeExtension() -> InputObjectTypeExtensionContext? {
				return getRuleContext(InputObjectTypeExtensionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeExtension(self)
			}
		}
	}
	@discardableResult
	 internal func typeExtension() throws -> TypeExtensionContext {
		var _localctx: TypeExtensionContext = TypeExtensionContext(_ctx, getState())
		try enterRule(_localctx, 88, GraphQLParser.RULE_typeExtension)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(414)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,39, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(408)
		 		try scalarTypeExtension()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(409)
		 		try objectTypeExtension()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(410)
		 		try interfaceTypeExtension()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(411)
		 		try unionTypeExtension()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(412)
		 		try enumTypeExtension()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(413)
		 		try inputObjectTypeExtension()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ScalarTypeDefinitionContext: ParserRuleContext {
			internal
			func SCALAR() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.SCALAR.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_scalarTypeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterScalarTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitScalarTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func scalarTypeDefinition() throws -> ScalarTypeDefinitionContext {
		var _localctx: ScalarTypeDefinitionContext = ScalarTypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 90, GraphQLParser.RULE_scalarTypeDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(417)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(416)
		 		try description()

		 	}

		 	setState(419)
		 	try match(GraphQLParser.Tokens.SCALAR.rawValue)
		 	setState(420)
		 	try name()
		 	setState(422)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(421)
		 		try directives()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ScalarTypeExtensionContext: ParserRuleContext {
			internal
			func EXTEND() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXTEND.rawValue, 0)
			}
			internal
			func SCALAR() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.SCALAR.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_scalarTypeExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterScalarTypeExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitScalarTypeExtension(self)
			}
		}
	}
	@discardableResult
	 internal func scalarTypeExtension() throws -> ScalarTypeExtensionContext {
		var _localctx: ScalarTypeExtensionContext = ScalarTypeExtensionContext(_ctx, getState())
		try enterRule(_localctx, 92, GraphQLParser.RULE_scalarTypeExtension)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(424)
		 	try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 	setState(425)
		 	try match(GraphQLParser.Tokens.SCALAR.rawValue)
		 	setState(426)
		 	try name()
		 	setState(427)
		 	try directives()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ObjectTypeDefinitionContext: ParserRuleContext {
			internal
			func TYPE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.TYPE.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func implementsInterfaces() -> ImplementsInterfacesContext? {
				return getRuleContext(ImplementsInterfacesContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			internal
			func fieldsDefinition() -> FieldsDefinitionContext? {
				return getRuleContext(FieldsDefinitionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_objectTypeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterObjectTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitObjectTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func objectTypeDefinition() throws -> ObjectTypeDefinitionContext {
		var _localctx: ObjectTypeDefinitionContext = ObjectTypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 94, GraphQLParser.RULE_objectTypeDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(430)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(429)
		 		try description()

		 	}

		 	setState(432)
		 	try match(GraphQLParser.Tokens.TYPE.rawValue)
		 	setState(433)
		 	try name()
		 	setState(435)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.IMPLEMENTS.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(434)
		 		try implementsInterfaces(0)

		 	}

		 	setState(438)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(437)
		 		try directives()

		 	}

		 	setState(441)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,45,_ctx)) {
		 	case 1:
		 		setState(440)
		 		try fieldsDefinition()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	internal class ImplementsInterfacesContext: ParserRuleContext {
			internal
			func IMPLEMENTS() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.IMPLEMENTS.rawValue, 0)
			}
			internal
			func namedType() -> NamedTypeContext? {
				return getRuleContext(NamedTypeContext.self, 0)
			}
			internal
			func implementsInterfaces() -> ImplementsInterfacesContext? {
				return getRuleContext(ImplementsInterfacesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_implementsInterfaces
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterImplementsInterfaces(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitImplementsInterfaces(self)
			}
		}
	}

	 internal final  func implementsInterfaces( ) throws -> ImplementsInterfacesContext   {
		return try implementsInterfaces(0)
	}
	@discardableResult
	private func implementsInterfaces(_ _p: Int) throws -> ImplementsInterfacesContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ImplementsInterfacesContext = ImplementsInterfacesContext(_ctx, _parentState)
		var _prevctx: ImplementsInterfacesContext = _localctx
		let _startState: Int = 96
		try enterRecursionRule(_localctx, 96, GraphQLParser.RULE_implementsInterfaces, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(444)
			try match(GraphQLParser.Tokens.IMPLEMENTS.rawValue)
			setState(446)
			try _errHandler.sync(self)
			_la = try _input.LA(1)
			if (//closure
			 { () -> Bool in
			      let testSet: Bool = _la == GraphQLParser.Tokens.T__12.rawValue
			      return testSet
			 }()) {
				setState(445)
				try match(GraphQLParser.Tokens.T__12.rawValue)

			}

			setState(448)
			try namedType()

			_ctx!.stop = try _input.LT(-1)
			setState(455)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,47,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = ImplementsInterfacesContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, GraphQLParser.RULE_implementsInterfaces)
					setState(450)
					if (!(precpred(_ctx, 1))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
					}
					setState(451)
					try match(GraphQLParser.Tokens.T__12.rawValue)
					setState(452)
					try namedType()

			 
				}
				setState(457)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,47,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	internal class FieldsDefinitionContext: ParserRuleContext {
			internal
			func fieldDefinition() -> [FieldDefinitionContext] {
				return getRuleContexts(FieldDefinitionContext.self)
			}
			internal
			func fieldDefinition(_ i: Int) -> FieldDefinitionContext? {
				return getRuleContext(FieldDefinitionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fieldsDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFieldsDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFieldsDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func fieldsDefinition() throws -> FieldsDefinitionContext {
		var _localctx: FieldsDefinitionContext = FieldsDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 98, GraphQLParser.RULE_fieldsDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(458)
		 	try match(GraphQLParser.Tokens.T__0.rawValue)
		 	setState(460) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(459)
		 		try fieldDefinition()


		 		setState(462); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.TRUE.rawValue,GraphQLParser.Tokens.FALSE.rawValue,GraphQLParser.Tokens.NULL.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue,GraphQLParser.Tokens.STRING_VALUE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())
		 	setState(464)
		 	try match(GraphQLParser.Tokens.T__1.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class FieldDefinitionContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func typeReference() -> TypeReferenceContext? {
				return getRuleContext(TypeReferenceContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func argumentsDefinition() -> ArgumentsDefinitionContext? {
				return getRuleContext(ArgumentsDefinitionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fieldDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFieldDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFieldDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func fieldDefinition() throws -> FieldDefinitionContext {
		var _localctx: FieldDefinitionContext = FieldDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 100, GraphQLParser.RULE_fieldDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(467)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(466)
		 		try description()

		 	}

		 	setState(469)
		 	try name()
		 	setState(471)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(470)
		 		try argumentsDefinition()

		 	}

		 	setState(473)
		 	try match(GraphQLParser.Tokens.T__4.rawValue)
		 	setState(474)
		 	try typeReference()
		 	setState(476)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(475)
		 		try directives()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ArgumentsDefinitionContext: ParserRuleContext {
			internal
			func inputValueDefinition() -> [InputValueDefinitionContext] {
				return getRuleContexts(InputValueDefinitionContext.self)
			}
			internal
			func inputValueDefinition(_ i: Int) -> InputValueDefinitionContext? {
				return getRuleContext(InputValueDefinitionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_argumentsDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterArgumentsDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitArgumentsDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func argumentsDefinition() throws -> ArgumentsDefinitionContext {
		var _localctx: ArgumentsDefinitionContext = ArgumentsDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 102, GraphQLParser.RULE_argumentsDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(478)
		 	try match(GraphQLParser.Tokens.T__2.rawValue)
		 	setState(480) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(479)
		 		try inputValueDefinition()


		 		setState(482); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.TRUE.rawValue,GraphQLParser.Tokens.FALSE.rawValue,GraphQLParser.Tokens.NULL.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue,GraphQLParser.Tokens.STRING_VALUE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())
		 	setState(484)
		 	try match(GraphQLParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class InputValueDefinitionContext: ParserRuleContext {
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func typeReference() -> TypeReferenceContext? {
				return getRuleContext(TypeReferenceContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func defaultValue() -> DefaultValueContext? {
				return getRuleContext(DefaultValueContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_inputValueDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterInputValueDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitInputValueDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func inputValueDefinition() throws -> InputValueDefinitionContext {
		var _localctx: InputValueDefinitionContext = InputValueDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 104, GraphQLParser.RULE_inputValueDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(487)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(486)
		 		try description()

		 	}

		 	setState(489)
		 	try name()
		 	setState(490)
		 	try match(GraphQLParser.Tokens.T__4.rawValue)
		 	setState(491)
		 	try typeReference()
		 	setState(493)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__9.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(492)
		 		try defaultValue()

		 	}

		 	setState(496)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(495)
		 		try directives()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ObjectTypeExtensionContext: ParserRuleContext {
			internal
			func EXTEND() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXTEND.rawValue, 0)
			}
			internal
			func TYPE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.TYPE.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func fieldsDefinition() -> FieldsDefinitionContext? {
				return getRuleContext(FieldsDefinitionContext.self, 0)
			}
			internal
			func implementsInterfaces() -> ImplementsInterfacesContext? {
				return getRuleContext(ImplementsInterfacesContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_objectTypeExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterObjectTypeExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitObjectTypeExtension(self)
			}
		}
	}
	@discardableResult
	 internal func objectTypeExtension() throws -> ObjectTypeExtensionContext {
		var _localctx: ObjectTypeExtensionContext = ObjectTypeExtensionContext(_ctx, getState())
		try enterRule(_localctx, 106, GraphQLParser.RULE_objectTypeExtension)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(522)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,59, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(498)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(499)
		 		try match(GraphQLParser.Tokens.TYPE.rawValue)
		 		setState(500)
		 		try name()
		 		setState(502)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.IMPLEMENTS.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(501)
		 			try implementsInterfaces(0)

		 		}

		 		setState(505)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(504)
		 			try directives()

		 		}

		 		setState(507)
		 		try fieldsDefinition()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(509)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(510)
		 		try match(GraphQLParser.Tokens.TYPE.rawValue)
		 		setState(511)
		 		try name()
		 		setState(513)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.IMPLEMENTS.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(512)
		 			try implementsInterfaces(0)

		 		}

		 		setState(515)
		 		try directives()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(517)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(518)
		 		try match(GraphQLParser.Tokens.TYPE.rawValue)
		 		setState(519)
		 		try name()
		 		setState(520)
		 		try implementsInterfaces(0)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class InterfaceTypeDefinitionContext: ParserRuleContext {
			internal
			func INTERFACE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.INTERFACE.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			internal
			func fieldsDefinition() -> FieldsDefinitionContext? {
				return getRuleContext(FieldsDefinitionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_interfaceTypeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterInterfaceTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitInterfaceTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func interfaceTypeDefinition() throws -> InterfaceTypeDefinitionContext {
		var _localctx: InterfaceTypeDefinitionContext = InterfaceTypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 108, GraphQLParser.RULE_interfaceTypeDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(525)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(524)
		 		try description()

		 	}

		 	setState(527)
		 	try match(GraphQLParser.Tokens.INTERFACE.rawValue)
		 	setState(528)
		 	try name()
		 	setState(530)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(529)
		 		try directives()

		 	}

		 	setState(533)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,62,_ctx)) {
		 	case 1:
		 		setState(532)
		 		try fieldsDefinition()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class InterfaceTypeExtensionContext: ParserRuleContext {
			internal
			func EXTEND() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXTEND.rawValue, 0)
			}
			internal
			func INTERFACE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.INTERFACE.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func fieldsDefinition() -> FieldsDefinitionContext? {
				return getRuleContext(FieldsDefinitionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_interfaceTypeExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterInterfaceTypeExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitInterfaceTypeExtension(self)
			}
		}
	}
	@discardableResult
	 internal func interfaceTypeExtension() throws -> InterfaceTypeExtensionContext {
		var _localctx: InterfaceTypeExtensionContext = InterfaceTypeExtensionContext(_ctx, getState())
		try enterRule(_localctx, 110, GraphQLParser.RULE_interfaceTypeExtension)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(548)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,64, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(535)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(536)
		 		try match(GraphQLParser.Tokens.INTERFACE.rawValue)
		 		setState(537)
		 		try name()
		 		setState(539)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(538)
		 			try directives()

		 		}

		 		setState(541)
		 		try fieldsDefinition()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(543)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(544)
		 		try match(GraphQLParser.Tokens.INTERFACE.rawValue)
		 		setState(545)
		 		try name()
		 		setState(546)
		 		try directives()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class UnionTypeDefinitionContext: ParserRuleContext {
			internal
			func UNION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.UNION.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			internal
			func unionMemberTypes() -> UnionMemberTypesContext? {
				return getRuleContext(UnionMemberTypesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_unionTypeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterUnionTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitUnionTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func unionTypeDefinition() throws -> UnionTypeDefinitionContext {
		var _localctx: UnionTypeDefinitionContext = UnionTypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 112, GraphQLParser.RULE_unionTypeDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(551)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(550)
		 		try description()

		 	}

		 	setState(553)
		 	try match(GraphQLParser.Tokens.UNION.rawValue)
		 	setState(554)
		 	try name()
		 	setState(556)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(555)
		 		try directives()

		 	}

		 	setState(559)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__9.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(558)
		 		try unionMemberTypes(0)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	internal class UnionMemberTypesContext: ParserRuleContext {
			internal
			func namedType() -> NamedTypeContext? {
				return getRuleContext(NamedTypeContext.self, 0)
			}
			internal
			func unionMemberTypes() -> UnionMemberTypesContext? {
				return getRuleContext(UnionMemberTypesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_unionMemberTypes
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterUnionMemberTypes(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitUnionMemberTypes(self)
			}
		}
	}

	 internal final  func unionMemberTypes( ) throws -> UnionMemberTypesContext   {
		return try unionMemberTypes(0)
	}
	@discardableResult
	private func unionMemberTypes(_ _p: Int) throws -> UnionMemberTypesContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: UnionMemberTypesContext = UnionMemberTypesContext(_ctx, _parentState)
		var _prevctx: UnionMemberTypesContext = _localctx
		let _startState: Int = 114
		try enterRecursionRule(_localctx, 114, GraphQLParser.RULE_unionMemberTypes, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(562)
			try match(GraphQLParser.Tokens.T__9.rawValue)
			setState(564)
			try _errHandler.sync(self)
			_la = try _input.LA(1)
			if (//closure
			 { () -> Bool in
			      let testSet: Bool = _la == GraphQLParser.Tokens.T__13.rawValue
			      return testSet
			 }()) {
				setState(563)
				try match(GraphQLParser.Tokens.T__13.rawValue)

			}

			setState(566)
			try namedType()

			_ctx!.stop = try _input.LT(-1)
			setState(573)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,69,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = UnionMemberTypesContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, GraphQLParser.RULE_unionMemberTypes)
					setState(568)
					if (!(precpred(_ctx, 1))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
					}
					setState(569)
					try match(GraphQLParser.Tokens.T__13.rawValue)
					setState(570)
					try namedType()

			 
				}
				setState(575)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,69,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	internal class UnionTypeExtensionContext: ParserRuleContext {
			internal
			func EXTEND() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXTEND.rawValue, 0)
			}
			internal
			func UNION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.UNION.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func unionMemberTypes() -> UnionMemberTypesContext? {
				return getRuleContext(UnionMemberTypesContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_unionTypeExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterUnionTypeExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitUnionTypeExtension(self)
			}
		}
	}
	@discardableResult
	 internal func unionTypeExtension() throws -> UnionTypeExtensionContext {
		var _localctx: UnionTypeExtensionContext = UnionTypeExtensionContext(_ctx, getState())
		try enterRule(_localctx, 116, GraphQLParser.RULE_unionTypeExtension)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(589)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,71, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(576)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(577)
		 		try match(GraphQLParser.Tokens.UNION.rawValue)
		 		setState(578)
		 		try name()
		 		setState(580)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(579)
		 			try directives()

		 		}

		 		setState(582)
		 		try unionMemberTypes(0)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(584)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(585)
		 		try match(GraphQLParser.Tokens.UNION.rawValue)
		 		setState(586)
		 		try name()
		 		setState(587)
		 		try directives()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class EnumTypeDefinitionContext: ParserRuleContext {
			internal
			func ENUM() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.ENUM.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			internal
			func enumValuesDefinition() -> EnumValuesDefinitionContext? {
				return getRuleContext(EnumValuesDefinitionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_enumTypeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterEnumTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitEnumTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func enumTypeDefinition() throws -> EnumTypeDefinitionContext {
		var _localctx: EnumTypeDefinitionContext = EnumTypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 118, GraphQLParser.RULE_enumTypeDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(592)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(591)
		 		try description()

		 	}

		 	setState(594)
		 	try match(GraphQLParser.Tokens.ENUM.rawValue)
		 	setState(595)
		 	try name()
		 	setState(597)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(596)
		 		try directives()

		 	}

		 	setState(600)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,74,_ctx)) {
		 	case 1:
		 		setState(599)
		 		try enumValuesDefinition()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class EnumValuesDefinitionContext: ParserRuleContext {
			internal
			func enumValueDefinition() -> [EnumValueDefinitionContext] {
				return getRuleContexts(EnumValueDefinitionContext.self)
			}
			internal
			func enumValueDefinition(_ i: Int) -> EnumValueDefinitionContext? {
				return getRuleContext(EnumValueDefinitionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_enumValuesDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterEnumValuesDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitEnumValuesDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func enumValuesDefinition() throws -> EnumValuesDefinitionContext {
		var _localctx: EnumValuesDefinitionContext = EnumValuesDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 120, GraphQLParser.RULE_enumValuesDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(602)
		 	try match(GraphQLParser.Tokens.T__0.rawValue)
		 	setState(604) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(603)
		 		try enumValueDefinition()


		 		setState(606); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue,GraphQLParser.Tokens.STRING_VALUE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())
		 	setState(608)
		 	try match(GraphQLParser.Tokens.T__1.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class EnumValueDefinitionContext: ParserRuleContext {
			internal
			func enumValue() -> EnumValueContext? {
				return getRuleContext(EnumValueContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_enumValueDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterEnumValueDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitEnumValueDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func enumValueDefinition() throws -> EnumValueDefinitionContext {
		var _localctx: EnumValueDefinitionContext = EnumValueDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 122, GraphQLParser.RULE_enumValueDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(611)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(610)
		 		try description()

		 	}

		 	setState(613)
		 	try enumValue()
		 	setState(615)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(614)
		 		try directives()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class EnumTypeExtensionContext: ParserRuleContext {
			internal
			func EXTEND() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXTEND.rawValue, 0)
			}
			internal
			func ENUM() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.ENUM.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func enumValuesDefinition() -> EnumValuesDefinitionContext? {
				return getRuleContext(EnumValuesDefinitionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_enumTypeExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterEnumTypeExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitEnumTypeExtension(self)
			}
		}
	}
	@discardableResult
	 internal func enumTypeExtension() throws -> EnumTypeExtensionContext {
		var _localctx: EnumTypeExtensionContext = EnumTypeExtensionContext(_ctx, getState())
		try enterRule(_localctx, 124, GraphQLParser.RULE_enumTypeExtension)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(630)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,79, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(617)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(618)
		 		try match(GraphQLParser.Tokens.ENUM.rawValue)
		 		setState(619)
		 		try name()
		 		setState(621)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(620)
		 			try directives()

		 		}

		 		setState(623)
		 		try enumValuesDefinition()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(625)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(626)
		 		try match(GraphQLParser.Tokens.ENUM.rawValue)
		 		setState(627)
		 		try name()
		 		setState(628)
		 		try directives()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class InputObjectTypeDefinitionContext: ParserRuleContext {
			internal
			func INPUT() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.INPUT.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			internal
			func inputFieldsDefinition() -> InputFieldsDefinitionContext? {
				return getRuleContext(InputFieldsDefinitionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_inputObjectTypeDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterInputObjectTypeDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitInputObjectTypeDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func inputObjectTypeDefinition() throws -> InputObjectTypeDefinitionContext {
		var _localctx: InputObjectTypeDefinitionContext = InputObjectTypeDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 126, GraphQLParser.RULE_inputObjectTypeDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(633)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(632)
		 		try description()

		 	}

		 	setState(635)
		 	try match(GraphQLParser.Tokens.INPUT.rawValue)
		 	setState(636)
		 	try name()
		 	setState(638)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(637)
		 		try directives()

		 	}

		 	setState(641)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,82,_ctx)) {
		 	case 1:
		 		setState(640)
		 		try inputFieldsDefinition()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class InputFieldsDefinitionContext: ParserRuleContext {
			internal
			func inputValueDefinition() -> [InputValueDefinitionContext] {
				return getRuleContexts(InputValueDefinitionContext.self)
			}
			internal
			func inputValueDefinition(_ i: Int) -> InputValueDefinitionContext? {
				return getRuleContext(InputValueDefinitionContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_inputFieldsDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterInputFieldsDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitInputFieldsDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func inputFieldsDefinition() throws -> InputFieldsDefinitionContext {
		var _localctx: InputFieldsDefinitionContext = InputFieldsDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 128, GraphQLParser.RULE_inputFieldsDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(643)
		 	try match(GraphQLParser.Tokens.T__0.rawValue)
		 	setState(645) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(644)
		 		try inputValueDefinition()


		 		setState(647); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.TRUE.rawValue,GraphQLParser.Tokens.FALSE.rawValue,GraphQLParser.Tokens.NULL.rawValue,GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.ON.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue,GraphQLParser.Tokens.STRING_VALUE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())
		 	setState(649)
		 	try match(GraphQLParser.Tokens.T__1.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class InputObjectTypeExtensionContext: ParserRuleContext {
			internal
			func EXTEND() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXTEND.rawValue, 0)
			}
			internal
			func INPUT() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.INPUT.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func inputFieldsDefinition() -> InputFieldsDefinitionContext? {
				return getRuleContext(InputFieldsDefinitionContext.self, 0)
			}
			internal
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_inputObjectTypeExtension
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterInputObjectTypeExtension(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitInputObjectTypeExtension(self)
			}
		}
	}
	@discardableResult
	 internal func inputObjectTypeExtension() throws -> InputObjectTypeExtensionContext {
		var _localctx: InputObjectTypeExtensionContext = InputObjectTypeExtensionContext(_ctx, getState())
		try enterRule(_localctx, 130, GraphQLParser.RULE_inputObjectTypeExtension)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(664)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,85, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(651)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(652)
		 		try match(GraphQLParser.Tokens.INPUT.rawValue)
		 		setState(653)
		 		try name()
		 		setState(655)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(654)
		 			try directives()

		 		}

		 		setState(657)
		 		try inputFieldsDefinition()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(659)
		 		try match(GraphQLParser.Tokens.EXTEND.rawValue)
		 		setState(660)
		 		try match(GraphQLParser.Tokens.INPUT.rawValue)
		 		setState(661)
		 		try name()
		 		setState(662)
		 		try directives()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class DirectiveDefinitionContext: ParserRuleContext {
			internal
			func DIRECTIVE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.DIRECTIVE.rawValue, 0)
			}
			internal
			func name() -> NameContext? {
				return getRuleContext(NameContext.self, 0)
			}
			internal
			func ON() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.ON.rawValue, 0)
			}
			internal
			func directiveLocations() -> DirectiveLocationsContext? {
				return getRuleContext(DirectiveLocationsContext.self, 0)
			}
			internal
			func description() -> DescriptionContext? {
				return getRuleContext(DescriptionContext.self, 0)
			}
			internal
			func argumentsDefinition() -> ArgumentsDefinitionContext? {
				return getRuleContext(ArgumentsDefinitionContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_directiveDefinition
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDirectiveDefinition(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDirectiveDefinition(self)
			}
		}
	}
	@discardableResult
	 internal func directiveDefinition() throws -> DirectiveDefinitionContext {
		var _localctx: DirectiveDefinitionContext = DirectiveDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 132, GraphQLParser.RULE_directiveDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(667)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.STRING_VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(666)
		 		try description()

		 	}

		 	setState(669)
		 	try match(GraphQLParser.Tokens.DIRECTIVE.rawValue)
		 	setState(670)
		 	try match(GraphQLParser.Tokens.T__11.rawValue)
		 	setState(671)
		 	try name()
		 	setState(673)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(672)
		 		try argumentsDefinition()

		 	}

		 	setState(675)
		 	try match(GraphQLParser.Tokens.ON.rawValue)
		 	setState(676)
		 	try directiveLocations(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	internal class DirectiveLocationsContext: ParserRuleContext {
			internal
			func directiveLocation() -> DirectiveLocationContext? {
				return getRuleContext(DirectiveLocationContext.self, 0)
			}
			internal
			func directiveLocations() -> DirectiveLocationsContext? {
				return getRuleContext(DirectiveLocationsContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_directiveLocations
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDirectiveLocations(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDirectiveLocations(self)
			}
		}
	}

	 internal final  func directiveLocations( ) throws -> DirectiveLocationsContext   {
		return try directiveLocations(0)
	}
	@discardableResult
	private func directiveLocations(_ _p: Int) throws -> DirectiveLocationsContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: DirectiveLocationsContext = DirectiveLocationsContext(_ctx, _parentState)
		var _prevctx: DirectiveLocationsContext = _localctx
		let _startState: Int = 134
		try enterRecursionRule(_localctx, 134, GraphQLParser.RULE_directiveLocations, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(680)
			try _errHandler.sync(self)
			_la = try _input.LA(1)
			if (//closure
			 { () -> Bool in
			      let testSet: Bool = _la == GraphQLParser.Tokens.T__13.rawValue
			      return testSet
			 }()) {
				setState(679)
				try match(GraphQLParser.Tokens.T__13.rawValue)

			}

			setState(682)
			try directiveLocation()

			_ctx!.stop = try _input.LT(-1)
			setState(689)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,89,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = DirectiveLocationsContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, GraphQLParser.RULE_directiveLocations)
					setState(684)
					if (!(precpred(_ctx, 1))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
					}
					setState(685)
					try match(GraphQLParser.Tokens.T__13.rawValue)
					setState(686)
					try directiveLocation()

			 
				}
				setState(691)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,89,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	internal class DirectiveLocationContext: ParserRuleContext {
			internal
			func executableDirectiveLocation() -> ExecutableDirectiveLocationContext? {
				return getRuleContext(ExecutableDirectiveLocationContext.self, 0)
			}
			internal
			func typeSystemDirectiveLocation() -> TypeSystemDirectiveLocationContext? {
				return getRuleContext(TypeSystemDirectiveLocationContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_directiveLocation
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDirectiveLocation(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDirectiveLocation(self)
			}
		}
	}
	@discardableResult
	 internal func directiveLocation() throws -> DirectiveLocationContext {
		var _localctx: DirectiveLocationContext = DirectiveLocationContext(_ctx, getState())
		try enterRule(_localctx, 136, GraphQLParser.RULE_directiveLocation)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(694)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .EXECUTABLE_DIRECTIVE_LOCATION:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(692)
		 		try executableDirectiveLocation()

		 		break

		 	case .TYPE_SYSTEM_DIRECTIVE_LOCATION:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(693)
		 		try typeSystemDirectiveLocation()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ExecutableDirectiveLocationContext: ParserRuleContext {
			internal
			func EXECUTABLE_DIRECTIVE_LOCATION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_executableDirectiveLocation
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterExecutableDirectiveLocation(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitExecutableDirectiveLocation(self)
			}
		}
	}
	@discardableResult
	 internal func executableDirectiveLocation() throws -> ExecutableDirectiveLocationContext {
		var _localctx: ExecutableDirectiveLocationContext = ExecutableDirectiveLocationContext(_ctx, getState())
		try enterRule(_localctx, 138, GraphQLParser.RULE_executableDirectiveLocation)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(696)
		 	try match(GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class TypeSystemDirectiveLocationContext: ParserRuleContext {
			internal
			func TYPE_SYSTEM_DIRECTIVE_LOCATION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeSystemDirectiveLocation
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeSystemDirectiveLocation(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeSystemDirectiveLocation(self)
			}
		}
	}
	@discardableResult
	 internal func typeSystemDirectiveLocation() throws -> TypeSystemDirectiveLocationContext {
		var _localctx: TypeSystemDirectiveLocationContext = TypeSystemDirectiveLocationContext(_ctx, getState())
		try enterRule(_localctx, 140, GraphQLParser.RULE_typeSystemDirectiveLocation)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(698)
		 	try match(GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class NameContext: ParserRuleContext {
			internal
			func nameBase() -> NameBaseContext? {
				return getRuleContext(NameBaseContext.self, 0)
			}
			internal
			func TRUE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.TRUE.rawValue, 0)
			}
			internal
			func FALSE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.FALSE.rawValue, 0)
			}
			internal
			func NULL() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NULL.rawValue, 0)
			}
			internal
			func ON() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.ON.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_name
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterName(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitName(self)
			}
		}
	}
	@discardableResult
	 internal func name() throws -> NameContext {
		var _localctx: NameContext = NameContext(_ctx, getState())
		try enterRule(_localctx, 142, GraphQLParser.RULE_name)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(705)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .FRAGMENT:fallthrough
		 	case .QUERY:fallthrough
		 	case .MUTATION:fallthrough
		 	case .SUBSCRIPTION:fallthrough
		 	case .SCHEMA:fallthrough
		 	case .SCALAR:fallthrough
		 	case .TYPE:fallthrough
		 	case .INTERFACE:fallthrough
		 	case .IMPLEMENTS:fallthrough
		 	case .ENUM:fallthrough
		 	case .UNION:fallthrough
		 	case .INPUT:fallthrough
		 	case .EXTEND:fallthrough
		 	case .DIRECTIVE:fallthrough
		 	case .EXECUTABLE_DIRECTIVE_LOCATION:fallthrough
		 	case .TYPE_SYSTEM_DIRECTIVE_LOCATION:fallthrough
		 	case .NAME:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(700)
		 		try nameBase()

		 		break

		 	case .TRUE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(701)
		 		try match(GraphQLParser.Tokens.TRUE.rawValue)

		 		break

		 	case .FALSE:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(702)
		 		try match(GraphQLParser.Tokens.FALSE.rawValue)

		 		break

		 	case .NULL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(703)
		 		try match(GraphQLParser.Tokens.NULL.rawValue)

		 		break

		 	case .ON:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(704)
		 		try match(GraphQLParser.Tokens.ON.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class NameBaseContext: ParserRuleContext {
			internal
			func NAME() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, 0)
			}
			internal
			func FRAGMENT() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.FRAGMENT.rawValue, 0)
			}
			internal
			func QUERY() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.QUERY.rawValue, 0)
			}
			internal
			func MUTATION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.MUTATION.rawValue, 0)
			}
			internal
			func SUBSCRIPTION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.SUBSCRIPTION.rawValue, 0)
			}
			internal
			func SCHEMA() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.SCHEMA.rawValue, 0)
			}
			internal
			func SCALAR() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.SCALAR.rawValue, 0)
			}
			internal
			func TYPE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.TYPE.rawValue, 0)
			}
			internal
			func INTERFACE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.INTERFACE.rawValue, 0)
			}
			internal
			func IMPLEMENTS() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.IMPLEMENTS.rawValue, 0)
			}
			internal
			func ENUM() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.ENUM.rawValue, 0)
			}
			internal
			func UNION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.UNION.rawValue, 0)
			}
			internal
			func INPUT() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.INPUT.rawValue, 0)
			}
			internal
			func EXTEND() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXTEND.rawValue, 0)
			}
			internal
			func DIRECTIVE() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.DIRECTIVE.rawValue, 0)
			}
			internal
			func EXECUTABLE_DIRECTIVE_LOCATION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue, 0)
			}
			internal
			func TYPE_SYSTEM_DIRECTIVE_LOCATION() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_nameBase
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterNameBase(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitNameBase(self)
			}
		}
	}
	@discardableResult
	 internal func nameBase() throws -> NameBaseContext {
		var _localctx: NameBaseContext = NameBaseContext(_ctx, getState())
		try enterRule(_localctx, 144, GraphQLParser.RULE_nameBase)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(707)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.FRAGMENT.rawValue,GraphQLParser.Tokens.QUERY.rawValue,GraphQLParser.Tokens.MUTATION.rawValue,GraphQLParser.Tokens.SUBSCRIPTION.rawValue,GraphQLParser.Tokens.SCHEMA.rawValue,GraphQLParser.Tokens.SCALAR.rawValue,GraphQLParser.Tokens.TYPE.rawValue,GraphQLParser.Tokens.INTERFACE.rawValue,GraphQLParser.Tokens.IMPLEMENTS.rawValue,GraphQLParser.Tokens.ENUM.rawValue,GraphQLParser.Tokens.UNION.rawValue,GraphQLParser.Tokens.INPUT.rawValue,GraphQLParser.Tokens.EXTEND.rawValue,GraphQLParser.Tokens.DIRECTIVE.rawValue,GraphQLParser.Tokens.EXECUTABLE_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.TYPE_SYSTEM_DIRECTIVE_LOCATION.rawValue,GraphQLParser.Tokens.NAME.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override internal
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  48:
			return try implementsInterfaces_sempred(_localctx?.castdown(ImplementsInterfacesContext.self), predIndex)
		case  57:
			return try unionMemberTypes_sempred(_localctx?.castdown(UnionMemberTypesContext.self), predIndex)
		case  67:
			return try directiveLocations_sempred(_localctx?.castdown(DirectiveLocationsContext.self), predIndex)
	    default: return true
		}
	}
	private func implementsInterfaces_sempred(_ _localctx: ImplementsInterfacesContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 1)
		    default: return true
		}
	}
	private func unionMemberTypes_sempred(_ _localctx: UnionMemberTypesContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 1:return precpred(_ctx, 1)
		    default: return true
		}
	}
	private func directiveLocations_sempred(_ _localctx: DirectiveLocationsContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 2:return precpred(_ctx, 1)
		    default: return true
		}
	}


	internal
	static let _serializedATN = GraphQLParserATN().jsonString

	internal
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}