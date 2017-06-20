// Generated from Sequence.g4 by ANTLR 4.7
import Antlr4

open class SequenceLexer: Lexer {
	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = SequenceLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(SequenceLexer._ATN.getDecisionState(i)!, i))
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
        return SequenceLexer.VOCABULARY
    }

	public override init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, SequenceLexer._ATN, SequenceLexer._decisionToDFA, SequenceLexer._sharedContextCache)
	}

	override
	open func getGrammarFileName() -> String { return "Sequence.g4" }

    override
	open func getRuleNames() -> [String] { return SequenceLexer.ruleNames }

	override
	open func getSerializedATN() -> String { return SequenceLexer._serializedATN }

	override
	open func getChannelNames() -> [String] { return SequenceLexer.channelNames }

	override
	open func getModeNames() -> [String] { return SequenceLexer.modeNames }

	override
	open func getATN() -> ATN { return SequenceLexer._ATN }

    public static let _serializedATN: String = SequenceLexerATN().jsonString
	public static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}