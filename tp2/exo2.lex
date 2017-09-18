//Specification JFlex
import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column

binaire = [01]

%%
{binaire}++ {return new Symbol(sym.BIN, yytext());}
\n {} 
. {}
