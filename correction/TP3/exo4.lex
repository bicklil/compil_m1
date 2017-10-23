
import java_cup.runtime.Symbol;

%%

%unicode
%cup
%line
%column



entier = [0-9]+
op_arithm = [*/+-]
op_log = "||"|"&&"| "!"
op_rel = <|>|<=|>=|==|"!="
affect = "="
type = int|float|double|char
ident = [a-zA-Z_][a-zA-Z0-9_]*
reel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE][0-9]+)?
fauxreel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE])
chaine = \"[^\"\n]*\"
faussechaine = \"[^\"\n]*
comment = "//".*\n

%%

{type}		 { return new Symbol(sym.TYPE); }
{entier}         { return new Symbol(sym.ENTIER); }
{fauxreel}       { System.out.println("reel non reconnu ligne " + yyline + " : " + yytext() ); }
{reel}           { return new Symbol(sym.REEL); }
{op_arithm} 	 { System.out.println("OP_ARITHM : "+ yytext()); }
{op_log}	 { System.out.println("OP_LOG : "+ yytext()); }
{op_rel}	 { return new Symbol(sym.OPREL); }
"("             { return new Symbol(sym.POUV) ;}
")"             { return new Symbol(sym.PFERM) ;}
"{"             { return new Symbol(sym.ACOUV) ;}
"}"             { return new Symbol(sym.ACFERM) ;}
,               { return new Symbol(sym.VIRG) ;}
;               { return new Symbol(sym.PTVIRG) ;}
if              { return new Symbol(sym.IF); }
else            { return new Symbol(sym.ELSE); }
{ident}	 	{ return new Symbol(sym.IDENT);}
{faussechaine}  { System.out.println("chaine non terminee  ligne " + yyline + " : " + yytext() ); }
{chaine}	{ System.out.println("CHAINE : "+ yytext()); }
{comment}	{  }
{affect}	{ System.out.println(yytext());return new Symbol(sym.AFF); }

[ \n\t]          {}
.                { System.out.println("caractere non reconnu ligne " + yyline + " : " + yytext() ); }

