%%
%class lexer
%unicode
%int
%standalone
%line
%column

%{
int nbmot = 0;
int nblettre = 0;
int nbligne = 0;
%}

%eof{
System.out.println("Nbre de caractere : "+nblettre);
System.out.println("Nbre de mot :"+nbmot);
System.out.println("Nbre de ligne:"+nbligne);
System.out.println("Fin de l'analyse lexicale");
%eof}

chiffre = [0-9]
lettre = ([a-z]|[A-Z])
blanc = [ ]
carac = (chiffre|lettre)
%%

{carac} { nblettre++;}
{blanc} {nblettre++;nbmot++;}
[\n] {nbmot++;nbligne++;nblettre++;} // ne rien faire
. {nblettre++;}

