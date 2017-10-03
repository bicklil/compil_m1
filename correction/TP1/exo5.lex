%%
%class exo5
%unicode
%int
%standalone
%line
%column

%{
int nbc=0,nbl=0,nbm=0;
%}

%eof{
System.out.println("Nb de caracteres : " + nbc );
System.out.println("Nb de mots : " + nbm );
System.out.println("Nb de lignes : " + nbl );
System.out.println("Atchao !");
%eof}

mot = [a-zA-Z0-9]+


%%

{mot}        { nbm++; nbc+=yylength(); }
[\n]         { nbl++; }
.            { nbc++; }

