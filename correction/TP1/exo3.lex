%%
%class lexer
%unicode
%int
%standalone
%line
%column

%{
int nb=0;
%}

%eof{
System.out.println("Nb de caracteres ignores : " + nb);
System.out.println("Fin");
%eof}

pairpair = (aa |bb)*((ab|ba)(aa|bb)*(ab|ba)(aa|bb)*)*


%%

{pairpair}  { System.out.println("Nb pair de a et de b : " + yytext()); }
a*b*        { System.out.println("a*b* : " + yytext()); }
[\n]     {}
.        {nb++;}

