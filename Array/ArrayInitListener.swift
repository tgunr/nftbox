// Generated from ArrayInit.g4 by ANTLR 4.7
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ArrayInitParser}.
 */
public protocol ArrayInitListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ArrayInitParser#init1}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInit1(_ ctx: ArrayInitParser.Init1Context)
	/**
	 * Exit a parse tree produced by {@link ArrayInitParser#init1}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInit1(_ ctx: ArrayInitParser.Init1Context)
	/**
	 * Enter a parse tree produced by {@link ArrayInitParser#value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterValue(_ ctx: ArrayInitParser.ValueContext)
	/**
	 * Exit a parse tree produced by {@link ArrayInitParser#value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitValue(_ ctx: ArrayInitParser.ValueContext)
}