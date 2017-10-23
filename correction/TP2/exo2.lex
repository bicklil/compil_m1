
import java_cup.runtime.Symbol;

%%

%unicode
%cup
%line
%column



binaire = [0-1]


%%

{binaire}+        { return new Symbol(sym.BINAIRE, new String(yytext())); }
\n                {  }
.                 { }

