%%
%class lexer
%unicode
%int
%standalone
%line
%column

%{
int nblettrePerdu = 0;
int nblettreGarde = 0;
%}

%eof{
System.out.println("\nnb de lettre garde :"+nblettreGarde);
System.out.println("nb de lettre perdu :"+nblettrePerdu);
System.out.println("Fin de l'analyse lexicale");
%eof}

lettre = [a-zA-Z]
%%

{lettre}+ {System.out.print(yytext());nblettreGarde+=yylength();}
[\n] {}
. {nblettrePerdu++;}

