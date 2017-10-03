


%%

%class exo7
%unicode
%standalone
%line
%column



parasite = prs+t+|PRS+T+


%%

{parasite}        {                   }
\n|.              { System.out.print(yytext()); }


