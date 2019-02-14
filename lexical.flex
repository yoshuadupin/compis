%%
%class Lexical
%unicode
%line
%column
%standalone

%{
  StringBuffer string = new StringBuffer();
%}

IntegerLiteral = 0 | [1-9][0-9]*
DecimalLiteral = {IntegerLiteral}"."{IntegerLiteral}
LineTerminator = \r|\n|\r\n
WhiteSpace = {LineTerminator} | [ \t\f]
Identifier = [:jletter:] [:jletterdigit:]*
CharacterLiteral = \'([^\n\r\"\\])\'
//InputCharacter = [^\r\n]

// Reserved Words
Reserved_Words =
    "abort"
  | "else"
  | "new"
  | "return"
  | "abs"
  | "elsif"
  | "reverse"
  | "abstract"
  | "end"
  | "null"
  | "accept"
  | "entry"
  | "select"
  | "access"
  | "exception"
  | "of"
  | "separate"
  | "aliased"
  | "exit"
  | "some"
  | "all"
  | "others"
  | "subtype"
  | "for"
  | "out"
  | "synchronized"
  | "array"
  | "function"
  | "overriding"
  | "at"
  | "tagged"
  | "generic"
  | "package"
  | "task"
  | "begin"
  | "goto"
  | "pragma"
  | "terminate"
  | "body"
  | "private"
  | "then"
  | "if"
  | "procedure"
  | "type"
  | "case"
  | "in"
  | "protected"
  | "constant"
  | "interface"
  | "until"
  | "is"
  | "raise"
  | "use"
  | "declare"
  | "range"
  | "delay"
  | "limited"
  | "record"
  | "when"
  | "delta"
  | "loop"
  | "while"
  | "digits"
  | "renames"
  | "do"
  | "requeue"

// Operators
Operator_Adding = "+" | "-"
Operator_Multiplying = "*" | "/" | "mod" | "rem"
Operator_Relational = "<" | "<=" | ">=" | ">" | "/=" | "="
Operator_Logical = "not" | "or" | "and" | "xor"
Operator_Boolean = "TRUE" | "FALSE"
Operator_IO = "Get" | "Put"

// Data Types
Data_Type = "Integer" | "Float" | "Character" | "String" | "Array" | "array"

%state STRING 
%state COMMENTS 

%%
 <YYINITIAL>{

  // Reserved Words
  {Reserved_Words} {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}

  // Operators
  {Operator_Adding} {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tADDING OPERATOR");}
  {Operator_Multiplying} {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tMULTIPLYING OPERATOR");}
  {Operator_Relational} {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRELATIONAL OPERATOR");}
  {Operator_Logical} {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tLOGICALOPERATOR");}
  {Operator_Boolean} {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tBOOLEAN OPERATOR");}
  {Operator_IO} {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tI/O OPERATOR");}

  // Data Types
  {Data_Type} {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tDATA TYPE");}

  {Identifier} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tIDENTIFIER");}
  {IntegerLiteral} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tINTEGER_LITERAL");}
  {DecimalLiteral} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tREAL_LITERAL");}
  {CharacterLiteral} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tCHARACTER_LITERAL");}
  \" { string.setLength(0); yybegin(STRING); }
  "--" {
      System.out.println("COMMENT-START");
      string.setLength(0);
      yybegin(COMMENTS);
      }

  //SPECIAL CHARACTER
  "#" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tnumber sign");}
  "&" { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tampersand");}
  "'" { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tapostrophe, tick");}
  "(" { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tleft parenthesis");}
  ")" { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tright parenthesis");}
  "," { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tcomma");}
  "." { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tfull stop, dot, point");}

  ":" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tcolon");}
  ";" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tsemicolon");}
  "|" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tvertical line");}
  "[" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tleft square bracket");}
  "]" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tright square bracket");}
  "{" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tleft curly bracket");}
  "}" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tright curly bracket");}
  
  ".." {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tdouble dot");}
  "**" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tdouble star, exponentiate");}
  ":=" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tassignment (pronounced:‘‘becomes’’)");}
  "<<" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tleft label bracket");}
  ">>" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tright label bracket");}
  "<>" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tbox");}

  {WhiteSpace} {/*ignore*/}
  . {/*ignore*/}

 }
 
 <STRING> {
      \"             {   yybegin(YYINITIAL); 
                     System.out.println("\""+string.toString()+"\"\t-\t-\t-\t-\t-\t-\tSTRING_LITERAL"); }
      [^\n\r\"\\]+   { string.append( yytext());}
      \\t            { string.append('\t');}
      \\n            { string.append('\n');}

      \\r             { string.append('\r');} 
      \\\"           { string.append('\"');}
      \\             { string.append('\\');}
}

 <COMMENTS> {
    {LineTerminator} {
      yybegin(YYINITIAL);
      System.out.println(string.toString() + "\nCOMMENT-END");
      }
    [^\n\r\"\\]+   { string.append( yytext());}
    \\t            { string.append('\t');}
    \\n            { string.append('\n');}

    \\r             { string.append('\r');} 
    \\\"           { string.append('\"');}
    \\             { string.append('\\');}
}
