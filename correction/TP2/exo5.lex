
import java_cup.runtime.Symbol;

%%

%unicode
%cup
%line
%column



ident = [a-zAZ][a-zA-Z0-9]*
entier = [0-9]+
paro = "("
parf = ")"
espace = [ \t\n]


%%

{ident}        { return new Symbol(sym.IDENT); }
{paro}     { return new Symbol(sym.PARO); }
{parf}     { return new Symbol(sym.PARF); }
{entier}     { return new Symbol(sym.ENTIER); }
{espace}    { }
.              { System.out.println("non reconnu : " + yytext()); }


