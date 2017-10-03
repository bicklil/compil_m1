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
[:] {return new Symbol(sym.DPT, yytext());}
[,] {return new Symbol(sym.PV, yytext());}
{facture} {return new Symbol(sym.FAC, yytext());}
FACTURE {return new Symbol(sym.FACTURE, yytext());}
TOTAL {return new Symbol(sym.TOTAL, yytext());}
{lettre}+ {return new Symbol(sym.IDEN, yytext());}
{chiffre}+ {return new Symbol(sym.NBR, yytext());}
\n {} 
. {}
