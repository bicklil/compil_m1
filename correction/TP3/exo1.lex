
import java_cup.runtime.Symbol;

%%

%unicode
%standalone
%line
%column



entier = [0-9]+
op_arithm = [*/+-]
op_log = "||"|"&&"| "!"
op_rel = <|>|<=|>=|==|"!="
affect = "="
type = int|float|double|char
motcle = if | else | while |for |do | until
sep = [{}(),;\[\]]
ident = [a-zA-Z_][a-zA-Z0-9_]*
reel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE][0-9]+)?
chaine = \"[^\"]*\"
comment = "//".*\n

%%

{type}		 { System.out.println("TYPE : "+ yytext()); }
{entier}        { System.out.println("ENTIER : "+ yytext()); }
{reel}          { System.out.println("REEL : "+ yytext()); }
{op_arithm} 	{ System.out.println("OP_ARITHM : "+ yytext()); }
{op_log}	 { System.out.println("OP_LOG : "+ yytext()); }
{op_rel}	 { System.out.println("OP_REL : "+ yytext()); }
{motcle}	 { System.out.println("MCLE : "+ yytext()); }
{sep}		 { System.out.println("SEP : "+ yytext()); }
{ident}	 	{ System.out.println("IDENT : "+ yytext()); }
{chaine}	{ System.out.println("CHAINE : "+ yytext()); }
{comment}	{ System.out.println("COMMENT : "+ yytext()); }
{affect}	    { System.out.println("AFFECT : "+ yytext()); }

[ \n\t]          {}
.                { System.out.println("caractere non reconnu : " + yytext()); }

