%%
%class lexer
%unicode
%int
%standalone
%line
%column

%{
int nb = 0;
%}

%eof{
System.out.println("Nbre de carcateres ignores : "+nb);
System.out.println("Fin de l'analyse lexicale");
%eof}

pairpair = (aa|bb)*((ab|ba)(aa|bb)*(ab|ba)(aa|bb)*)*

%%

a*b* { System.out.println("QUE des a, ou que des b, ou des a d'abords et des b ensuite : "+yytext());}
{pairpair} { System.out.println("Nb pair de a et de b :"+yytext());}
[\n] {} // ne rien faire
. {nb++;}

