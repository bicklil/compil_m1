import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column

%eofval{
	return new Symbol(sym.EOF);
%eofval}

ident = [a-zA-Z_][a-zA-Z0-9_]*

%%

vrai {return new Symbol(sym.TRUE);}
faux {return new Symbol(sym.FALSE);}
et {return new Symbol(sym.AND);}
ou {return new Symbol(sym.OR);}
non {return new Symbol(sym.NOT);}
PRINT {return new Symbol(sym.PRINT);}
= {return new Symbol(sym.EQ);}
\( {return new Symbol(sym.PARO);}
\) {return new Symbol(sym.PARF);}
{ident} {return new Symbol(sym.IDENT, new String(yytext()));}
\n {return new Symbol(sym.NL);}
[ \t] {}
. {System.out.println("caractere non reconnu : "+yytext() );}

