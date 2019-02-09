%%
%class Lexical
%unicode
%line
%column
%standalone

LineTerminator = \r|\n|\r\n
WhiteSpace = {LineTerminator} | [ \t\f]
Identifier = [:jletter:] [:jletterdigit:]*
DecIntegerLiteral = 0 | [1-9][0-9]*

%%
 <YYINITIAL>{
    \" {System.out.println(yytext()+":quotation mark");}
    "#" {System.out.println(yytext()+":number sign");}
    "&" { System.out.println(yytext()+":ampersand");}
    "'" { System.out.println(yytext()+":apostrophe, tick");}
    "(" { System.out.println(yytext()+":left parenthesis");}
    ")" { System.out.println(yytext()+":right parenthesis");}
    "*" { System.out.println(yytext()+":asterisk, multiply");}
    "+" { System.out.println(yytext()+":plus sign");}
    "," { System.out.println(yytext()+":comma");}
    "-" { System.out.println(yytext()+":hyphen-minus, minus");}
    "." { System.out.println(yytext()+":full stop, dot, point");}
    "/" { System.out.println(yytext()+":solidus, divide");}

    ":" {System.out.println(yytext()+":colon");}
    ";" {System.out.println(yytext()+":semicolon");}
    "<" {System.out.println(yytext()+":less-than sign");}
    "=" {System.out.println(yytext()+":equals sign");}
    ">" {System.out.println(yytext()+":greater-than sign");}
    "_" {System.out.println(yytext()+":low line, underline");}
    "|" {System.out.println(yytext()+":vertical line");}
    "[" {System.out.println(yytext()+":left square bracket");}
    "]" {System.out.println(yytext()+":right square bracket");}
    "{" {System.out.println(yytext()+":left curly bracket");}
    "}" {System.out.println(yytext()+":right curly bracket");}
    
    "=>" {System.out.println(yytext()+":arrow");}
    ".." {System.out.println(yytext()+":double dot");}
    "**" {System.out.println(yytext()+":double star, exponentiate");}
    ":=" {System.out.println(yytext()+":assignment (pronounced:‘‘becomes’’)");}
    "/=" {System.out.println(yytext()+":inequality (pronounced:‘‘not equal’’)");}
    ">=" {System.out.println(yytext()+":greater than or equal");}
    "<=" {System.out.println(yytext()+":less than or equal");}
    "<<" {System.out.println(yytext()+":left label bracket");}
    ">>" {System.out.println(yytext()+":right label bracket");}
    "<>" {System.out.println(yytext()+":box");}

    {Identifier} {System.out.println(yytext()+":IDENTIFIER");}
    {DecIntegerLiteral} {System.out.println(yytext()+":INTEGER_LITERAL");}

    . {/*ignore*/}
    {WhiteSpace} {/*ignore*/}
 }
