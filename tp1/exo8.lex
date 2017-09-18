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

minuscule = [a-z]
majuscule = [A-Z]
num = [0-9]

%%

{minuscule} {c = yytext().charAt(0);codeascii = ((int)c - 93)%26+97;System.out.print((char)codeascii);}
{majuscule} {c = yytext().charAt(0);codeascii = ((int)c - 61)%26+65;System.out.print((char)codeascii);}
{num} {c = yytext().charAt(0);codeascii = ((int)c - 44)%10+48;System.out.print((char)codeascii);}
. {System.out.print(yytext());}

