/** Grammars always start with a grammar header. This grammar is called
 *  Sequence and must match the filename: Sequence.g4
 */
grammar Sequence;

/** A rule called init that matches comma-separated values between {...}. */
seq  : '{' value (',' value)* '}' ;  // must match at least one value

/** A value can be either a nested array/struct or a simple integer (INT) */
value : seq
      | INT
      ;

// parser rules start with lowercase letters, lexer rules with uppercase
INT :   [0-9]+ ;             // Define token INT as one or more digits
WS  :   [ \t\r\n]+ -> skip ; // Define whitespace rule, toss it out
