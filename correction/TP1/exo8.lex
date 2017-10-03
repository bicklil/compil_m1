

%%

%class exo8
%unicode
%standalone
%line
%column



lettremin = [a-z]
lettremaj = [A-Z]


%%

{lettremin}        { char c=yytext().charAt(0);
                     int code = (int)c;
					 code+=4;
                     if (code>'z') code=code-26;
                     System.out.print((char)code);
                   }

{lettremaj}        { char c=yytext().charAt(0);
                     int code = (int)c;
					 code+=4;
                     if (code>'Z') code=code-26;
                     System.out.print((char)(code));
                   }

\n|.              { System.out.print(yytext()); }


