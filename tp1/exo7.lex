%%
%class lexer
%unicode
%int
%standalone
%line
%column

%{
%}

%eof{
%eof}

parasite = pr[s]+[t]+|PR[S]+[T]+
%%

{parasite} {}
. {System.out.print(yytext());}

