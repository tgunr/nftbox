// Generated from ArrayInit.g4 by ANTLR 4.7
import Antlr4

open class ArrayInitLexer: Lexer {
	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ArrayInitLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(ArrayInitLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache:PredictionContextCache = PredictionContextCache()
	public static let T__0=1, T__1=2, T__2=3, INT=4, WS=5
	public static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public static let ruleNames: [String] = [
		"T__0", "T__1", "T__2", "INT", "WS"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'{'", "','", "'}'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, "INT", "WS"
	]
	public static let VOCABULARY: Vocabulary = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	//@Deprecated
	public let tokenNames: [String?]? = {
	    let length = _SYMBOLIC_NAMES.count
	    var tokenNames = [String?](repeating: nil, count: length)
		for i in 0..<length {
			var name = VOCABULARY.getLiteralName(i)
			if name == nil {
				name = VOCABULARY.getSymbolicName(i)
			}
			if name == nil {
				name = "<INVALID>"
			}
			tokenNames[i] = name
		}
		return tokenNames
	}()

	override
	open func getTokenNames() -> [String?]? {
		return tokenNames
	}

    open override func getVocabulary() -> Vocabulary {
        return ArrayInitLexer.VOCABULARY
    }

	public override init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, ArrayInitLexer._ATN, ArrayInitLexer._decisionToDFA, ArrayInitLexer._sharedContextCache)
	}

	override
	open func getGrammarFileName() -> String { return "ArrayInit.g4" }

    override
	open func getRuleNames() -> [String] { return ArrayInitLexer.ruleNames }

	override
	open func getSerializedATN() -> String { return ArrayInitLexer._serializedATN }

	override
	open func getChannelNames() -> [String] { return ArrayInitLexer.channelNames }

	override
	open func getModeNames() -> [String] { return ArrayInitLexer.modeNames }

	override
	open func getATN() -> ATN { return ArrayInitLexer._ATN }

    public static let _serializedATN: String = ArrayInitLexerATN().jsonString
	public static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}