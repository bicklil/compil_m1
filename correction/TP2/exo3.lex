
import java_cup.runtime.Symbol;

%%

%unicode
%cup
%line
%column



%%

FACTURE      	  { return new Symbol(sym.TITRE); }
TOTAL             { return new Symbol(sym.TOTAL); }
[A-Z][0-9]{3}	  { return new Symbol(sym.NOM); }
[a-zA-Z]+         { return new Symbol(sym.PRODUIT,new String(yytext())); }
[0-9]+            { return new Symbol(sym.NB, new Integer(yytext())); }
":"               { return new Symbol(sym.DP); }
"."               { return new Symbol(sym.FIN); }
","               { return new Symbol(sym.VIRG); }
\n                { }
.                 { }

