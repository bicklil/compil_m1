//Specification JFlex
import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column

binaire = [01]

%%
{binaire}++ {return new Symbol(sym.BIN, new Integer().parseInt(yytext(),2);}
\n {} 
. {}
