// Generated from Sequence.g4 by ANTLR 4.7
import Antlr4

open class SequenceParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = SequenceParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(SequenceParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()
	internal static let _sharedContextCache: PredictionContextCache = PredictionContextCache()
	public enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, INT = 4, WS = 5
	}
	public static let RULE_seq = 0, RULE_value = 1
	public static let ruleNames: [String] = [
		"seq", "value"
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

	override
	open func getGrammarFileName() -> String { return "Sequence.g4" }

	override
	open func getRuleNames() -> [String] { return SequenceParser.ruleNames }

	override
	open func getSerializedATN() -> String { return SequenceParser._serializedATN }

	override
	open func getATN() -> ATN { return SequenceParser._ATN }

	open override func getVocabulary() -> Vocabulary {
	    return SequenceParser.VOCABULARY
	}

	public override init(_ input:TokenStream)throws {
	    RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,SequenceParser._ATN,SequenceParser._decisionToDFA, SequenceParser._sharedContextCache)
	}
	open class SeqContext:ParserRuleContext {
		open func value() -> Array<ValueContext> {
			return getRuleContexts(ValueContext.self)
		}
		open func value(_ i: Int) -> ValueContext? {
			return getRuleContext(ValueContext.self,i)
		}
		open override func getRuleIndex() -> Int { return SequenceParser.RULE_seq }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is SequenceListener {
			 	(listener as! SequenceListener).enterSeq(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is SequenceListener {
			 	(listener as! SequenceListener).exitSeq(self)
			}
		}
	}
	@discardableResult
	open func seq() throws -> SeqContext {
		var _localctx: SeqContext = SeqContext(_ctx, getState())
		try enterRule(_localctx, 0, SequenceParser.RULE_seq)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(4)
		 	try match(SequenceParser.Tokens.T__0.rawValue)
		 	setState(5)
		 	try value()
		 	setState(10)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == SequenceParser.Tokens.T__1.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(6)
		 		try match(SequenceParser.Tokens.T__1.rawValue)
		 		setState(7)
		 		try value()


		 		setState(12)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(13)
		 	try match(SequenceParser.Tokens.T__2.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class ValueContext:ParserRuleContext {
		open func seq() -> SeqContext? {
			return getRuleContext(SeqContext.self,0)
		}
		open func INT() -> TerminalNode? { return getToken(SequenceParser.Tokens.INT.rawValue, 0) }
		open override func getRuleIndex() -> Int { return SequenceParser.RULE_value }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is SequenceListener {
			 	(listener as! SequenceListener).enterValue(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is SequenceListener {
			 	(listener as! SequenceListener).exitValue(self)
			}
		}
	}
	@discardableResult
	open func value() throws -> ValueContext {
		var _localctx: ValueContext = ValueContext(_ctx, getState())
		try enterRule(_localctx, 2, SequenceParser.RULE_value)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(17)
		 	try _errHandler.sync(self)
		 	switch (SequenceParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__0:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(15)
		 		try seq()

		 		break

		 	case .INT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(16)
		 		try match(SequenceParser.Tokens.INT.rawValue)

		 		break
		 	default:
		 		throw try ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

   public static let _serializedATN : String = SequenceParserATN().jsonString
   public static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}