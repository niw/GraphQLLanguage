// Generated from Vendor/antlr4-graphql-grammar/src/main/antlr4/GraphQL.g4 by ANTLR 4.9
import Antlr4

internal class GraphQLLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = GraphQLLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(GraphQLLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	internal
	static let T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, 
            T__8=9, T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, TRUE=15, 
            FALSE=16, NULL=17, FRAGMENT=18, QUERY=19, MUTATION=20, SUBSCRIPTION=21, 
            SCHEMA=22, SCALAR=23, TYPE=24, INTERFACE=25, IMPLEMENTS=26, 
            ENUM=27, UNION=28, INPUT=29, EXTEND=30, DIRECTIVE=31, ON=32, 
            EXECUTABLE_DIRECTIVE_LOCATION=33, TYPE_SYSTEM_DIRECTIVE_LOCATION=34, 
            NAME=35, INT_VALUE=36, INTEGER_PART=37, FLOAT_VALUE=38, STRING_VALUE=39, 
            UNICODE_BOM=40, WHITE_SPACE=41, LINE_TERMINATOR=42, COMMENT=43, 
            COMMA=44

	internal
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	internal
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	internal
	static let ruleNames: [String] = [
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "TRUE", "FALSE", "NULL", "FRAGMENT", 
		"QUERY", "MUTATION", "SUBSCRIPTION", "SCHEMA", "SCALAR", "TYPE", "INTERFACE", 
		"IMPLEMENTS", "ENUM", "UNION", "INPUT", "EXTEND", "DIRECTIVE", "ON", "EXECUTABLE_DIRECTIVE_LOCATION", 
		"TYPE_SYSTEM_DIRECTIVE_LOCATION", "NAME", "INT_VALUE", "INTEGER_PART", 
		"NEGATIVE_SIGN", "DIGIT", "NON_ZERO_DIGIT", "FLOAT_VALUE", "FRACTIONAL_PART", 
		"EXPONENTIAL_PART", "EXPONENT_INDICATOR", "SIGN", "STRING_VALUE", "STRING_CHARACTER", 
		"ESCAPED_UNICODE", "ESCAPED_UNICODE_CHARACTER", "ESCAPED_CHARACTER", "BLOCK_STRING_CHARCTER", 
		"SOURCE_CHARACTER", "UNICODE_BOM", "WHITE_SPACE", "LINE_TERMINATOR", "COMMENT", 
		"COMMA"
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
	func getVocabulary() -> Vocabulary {
		return GraphQLLexer.VOCABULARY
	}

	internal
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.9", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, GraphQLLexer._ATN, GraphQLLexer._decisionToDFA, GraphQLLexer._sharedContextCache)
	}

	override internal
	func getGrammarFileName() -> String { return "GraphQL.g4" }

	override internal
	func getRuleNames() -> [String] { return GraphQLLexer.ruleNames }

	override internal
	func getSerializedATN() -> String { return GraphQLLexer._serializedATN }

	override internal
	func getChannelNames() -> [String] { return GraphQLLexer.channelNames }

	override internal
	func getModeNames() -> [String] { return GraphQLLexer.modeNames }

	override internal
	func getATN() -> ATN { return GraphQLLexer._ATN }


	internal
	static let _serializedATN: String = GraphQLLexerATN().jsonString

	internal
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}