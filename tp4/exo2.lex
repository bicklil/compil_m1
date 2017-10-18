
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
fauxreel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE])
chaine = \"[^\"\n]*\"
faussechaine = \"[^\"\n]*
comment = "//".*\n

%%

{type}		 { return new Symbol(sym.TYPE, new String(Yytext())); }
{entier}        { return new Symbol(sym.ENTIER, new Integer(Yytext())); }
{fauxreel}     { System.out.println("reel non reconnu ligne " + yyline + " : " + yytext() ); }
{reel}          { return new Symbol(sym.REEL, new Double(Yytext())); }
{op_arithm} 	{ return new Symbol(sym.OP_ARITHM, new String(Yytext())); }
{op_log}	 { return new Symbole(sym.OP_LOG, new String(Yytext())); }
{op_rel}	 { return new Symbol(sym.OP_REL,new String(Yytext())); }
{motcle}	 { return new Symbol(sym.MOTCLE,new String(Yytext())); }
{sep}		 { return new Symbol(sym.SEP,new String(Yytext())); }
{ident}	 	{ return new Symbol(sym.IDENT,new String(Yytext())); }
{faussechaine}  { System.out.println("chaine non terminee  ligne " + yyline + " : " + yytext() ); }
{chaine}	{ return new Symbol(sym.CHAINE,new String(Yytext())); }
{comment}	{ System.out.println("COMMENT : "+ yytext()); }
{affect}	    { return new Symbol(sym.AFFECT); }

[ \n\t]          {}
.                { System.out.println("caractere non reconnu ligne " + yyline + " : " + yytext() ); }

