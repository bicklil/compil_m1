//Specification JFlex
import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column

lettre = [a-zA-Z]
chiffre = [0-9]
facture = (lettre)(chiffre){3,3}

%%
{facture} {return new Symbol(sym.FAC, yytext());}
TOTAL {return new Symbol(sym.TOTAL, yytext());}
{lettre}+ {return new Symbol(sym.IDEN, yytext());}
{chiffre}+ {return new Symbol(sym.NBR, new Integer(yytext());}
\n {} 
. {}
