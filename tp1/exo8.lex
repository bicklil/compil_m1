%%
%class lexer
%unicode
%int
%standalone
%line
%column

%{
char c;
int codeascii;
%}

%eof{
%eof}

alphabet = [a-zA-Z0-9]

%%

{alphabet} {c = yytext().charAt(0);codeascii = (int)c + 4;System.out.print((char)codeascii);}
. {System.out.print(yytext());}

