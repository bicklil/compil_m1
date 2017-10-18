import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column
%%

[0-9]+ {return new Symbol(sym.nb, new Double(yytext()));}
\+ {return new Symbol(sym.plus);}
\- {return new Symbol(sym.moins);}
\* {return new Symbol(sym.fois);}
\: {return new Symbol(sym.divise);}
\( {return new Symbol(sym.paro);}
\) {return new Symbol(sym.parf);}
\n {}
. {System.out.print(yytext());}

