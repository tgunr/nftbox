// Generated from Sequence.g4 by ANTLR 4.7
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link SequenceParser}.
 */
public protocol SequenceListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link SequenceParser#seq}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSeq(_ ctx: SequenceParser.SeqContext)
	/**
	 * Exit a parse tree produced by {@link SequenceParser#seq}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSeq(_ ctx: SequenceParser.SeqContext)
	/**
	 * Enter a parse tree produced by {@link SequenceParser#value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterValue(_ ctx: SequenceParser.ValueContext)
	/**
	 * Exit a parse tree produced by {@link SequenceParser#value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitValue(_ ctx: SequenceParser.ValueContext)
}