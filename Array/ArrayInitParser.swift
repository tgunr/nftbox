// Generated from ArrayInit.g4 by ANTLR 4.7
import Antlr4

open class ArrayInitParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ArrayInitParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(ArrayInitParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()
	internal static let _sharedContextCache: PredictionContextCache = PredictionContextCache()
	public enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, INT = 4, WS = 5
	}
	public static let RULE_init1 = 0, RULE_value = 1
	public static let ruleNames: [String] = [
		"init1", "value"
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
	open func getGrammarFileName() -> String { return "ArrayInit.g4" }

	override
	open func getRuleNames() -> [String] { return ArrayInitParser.ruleNames }

	override
	open func getSerializedATN() -> String { return ArrayInitParser._serializedATN }

	override
	open func getATN() -> ATN { return ArrayInitParser._ATN }

	open override func getVocabulary() -> Vocabulary {
	    return ArrayInitParser.VOCABULARY
	}

	public override init(_ input:TokenStream)throws {
	    RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,ArrayInitParser._ATN,ArrayInitParser._decisionToDFA, ArrayInitParser._sharedContextCache)
	}
	open class Init1Context:ParserRuleContext {
		open func value() -> Array<ValueContext> {
			return getRuleContexts(ValueContext.self)
		}
		open func value(_ i: Int) -> ValueContext? {
			return getRuleContext(ValueContext.self,i)
		}
		open override func getRuleIndex() -> Int { return ArrayInitParser.RULE_init1 }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ArrayInitListener {
			 	(listener as! ArrayInitListener).enterInit1(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ArrayInitListener {
			 	(listener as! ArrayInitListener).exitInit1(self)
			}
		}
	}
	@discardableResult
	open func init1() throws -> Init1Context {
		var _localctx: Init1Context = Init1Context(_ctx, getState())
		try enterRule(_localctx, 0, ArrayInitParser.RULE_init1)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(4)
		 	try match(ArrayInitParser.Tokens.T__0.rawValue)
		 	setState(5)
		 	try value()
		 	setState(10)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ArrayInitParser.Tokens.T__1.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(6)
		 		try match(ArrayInitParser.Tokens.T__1.rawValue)
		 		setState(7)
		 		try value()


		 		setState(12)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(13)
		 	try match(ArrayInitParser.Tokens.T__2.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class ValueContext:ParserRuleContext {
		open func init1() -> Init1Context? {
			return getRuleContext(Init1Context.self,0)
		}
		open func INT() -> TerminalNode? { return getToken(ArrayInitParser.Tokens.INT.rawValue, 0) }
		open override func getRuleIndex() -> Int { return ArrayInitParser.RULE_value }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ArrayInitListener {
			 	(listener as! ArrayInitListener).enterValue(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ArrayInitListener {
			 	(listener as! ArrayInitListener).exitValue(self)
			}
		}
	}
	@discardableResult
	open func value() throws -> ValueContext {
		var _localctx: ValueContext = ValueContext(_ctx, getState())
		try enterRule(_localctx, 2, ArrayInitParser.RULE_value)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(17)
		 	try _errHandler.sync(self)
		 	switch (ArrayInitParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__0:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(15)
		 		try init1()

		 		break

		 	case .INT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(16)
		 		try match(ArrayInitParser.Tokens.INT.rawValue)

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

   public static let _serializedATN : String = ArrayInitParserATN().jsonString
   public static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}