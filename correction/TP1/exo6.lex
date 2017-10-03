%%
%class exo6
%unicode
%int
%standalone
%line
%column

%{
int nbg=0,nbs=0;
%}

%eof{
System.out.println("\nNb de caracteres gardes : " + nbg );
System.out.println("Nb de caracteres supprimes : " + nbs );
System.out.println("Atchao !");
%eof}

mot = [a-zA-Z]


%%

{mot}        { nbg++;
               System.out.print(yytext()); }
[\n]         { nbs++; }
.            { nbs++; }

