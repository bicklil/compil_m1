
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
motcle = if | else | while |for |do | until
sep = [{}()\[\]]
ident = [a-zA-Z_][a-zA-Z0-9_]*
reel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE][0-9]+)?
fauxreel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE])
chaine = \"[^\"\n]*\"
faussechaine = \"[^\"\n]*
comment = "//".*\n

%%

{type}		 { return new Symbol(sym.TYPE); }
{entier}        { System.out.println("ENTIER : "+ yytext()); }
{fauxreel}     { System.out.println("reel non reconnu ligne " + yyline + " : " + yytext() ); }
{reel}          { System.out.println("REEL : "+ yytext()); }
{op_arithm} 	{ System.out.println("OP_ARITHM : "+ yytext()); }
{op_log}	 { System.out.println("OP_LOG : "+ yytext()); }
{op_rel}	 { System.out.println("OP_REL : "+ yytext()); }
{motcle}	 { System.out.println("MCLE : "+ yytext()); }
[,]           { return new Symbol(sym.VIRG) ;}
[;]           {return new Symbol(sym.PVIRG) ; }
{sep}		 { }
{ident}	 	{ return new Symbol(sym.IDENT);}
{faussechaine}  { System.out.println("chaine non terminee  ligne " + yyline + " : " + yytext() ); }
{chaine}	{ System.out.println("CHAINE : "+ yytext()); }
{comment}	{ System.out.println("COMMENT : "+ yytext()); }
{affect}	    { System.out.println("AFFECT : "+ yytext()); }

[ \n\t]          {}
.                { System.out.println("caractere non reconnu ligne " + yyline + " : " + yytext() ); }

