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

//LineTerminator = \r|\n|\r\n
//InputCharacter = [^\r\n]
//EndOfLineComment     = "--" {InputCharacter}* {LineTerminator}

%state STRING 
%state COMMENTS 

//dhaihdawoidhioawhd
%%
 <YYINITIAL>{

    // RESERVED WORDS
    "abort" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "else" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "new" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "return" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "abs" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "elsif" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "not" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "reverse" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "abstract" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "end" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "null" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "accept" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "entry" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "select" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "access" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "exception" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "of" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "separate" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "aliased" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "exit" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "or" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "some" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "all" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "others" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "subtype" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "and" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "for" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "out" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "synchronized" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "array" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "function" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "overriding" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "at" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "tagged" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "generic" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "package" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "task" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "begin" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "goto" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "pragma" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "terminate" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "body" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "private" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "then" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "if" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "procedure" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "type" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "case" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "in" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "protected" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "constant" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "interface" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "until" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "is" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "raise" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "use" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "declare" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "range" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "delay" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "limited" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "record" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "when" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "delta" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "loop" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "rem" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "while" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "digits" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "renames" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "with" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "do" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "mod" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "requeue" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}
    "xor" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tRESERVED WORD");}

    // DATA TYPE
    "Integer" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tDATA TYPE");}
    "Float" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tDATA TYPE");}
    "Character" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tDATA TYPE");}
    "String" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tDATA TYPE");}
    "Array" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tDATA TYPE");}
    "array" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tDATA TYPE");}

    // BOOLEAN OPERATORS
    "TRUE" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tBOOLEAN OPERATOR");}
    "FALSE" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tBOOLEAN OPERATOR");}

    // I/O OPERATOR
    "Put" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tI/O OPERATOR");}
    "Get" {System.out.println(yytext() + "\t-\t-\t-\t-\t-\t-\tI/O OPERATOR");}

    {Identifier} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tIDENTIFIER");}
    {IntegerLiteral} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tINTEGER_LITERAL");}
    {DecimalLiteral} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tREAL_LITERAL");}
    {CharacterLiteral} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tCHARACTER_LITERAL");}
   // {EndOfLineComment} {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tCOMMENTS");}
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
    "*" { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tasterisk, multiply");}
    "+" { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tplus sign");}
    "," { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tcomma");}
    "-" { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\thyphen-minus, minus");}
    "." { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tfull stop, dot, point");}
    "/" { System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tsolidus, divide");}

    ":" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tcolon");}
    ";" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tsemicolon");}
    "<" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tless-than sign");}
    "=" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tequals sign");}
    ">" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tgreater-than sign");}
    // "_" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tlow line, underline");}
    "|" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tvertical line");}
    "[" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tleft square bracket");}
    "]" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tright square bracket");}
    "{" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tleft curly bracket");}
    "}" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tright curly bracket");}
    
    "=>" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tarrow");}
    ".." {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tdouble dot");}
    "**" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tdouble star, exponentiate");}
    ":=" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tassignment (pronounced:‘‘becomes’’)");}
    "/=" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tinequality (pronounced:‘‘not equal’’)");}
    ">=" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tgreater than or equal");}
    "<=" {System.out.println(yytext()+"\t-\t-\t-\t-\t-\t-\tless than or equal");}
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
