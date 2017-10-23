
import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column



entier = [0-9]+
reel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE][0-9]+)?

%eofval{
   return new Symbol(sym.EOF);
%eofval}


%%

{entier}         { return new Symbol(sym.NB, new Float(yytext())); }
{reel}           { return new Symbol(sym.NB, new Float(yytext())); }
"+"   		 { return new Symbol(sym.PLUS); }
"*"   		 { return new Symbol(sym.MULT); }
"/"   		 { return new Symbol(sym.DIV); }
"-"   		 { return new Symbol(sym.MOINS); }
"("             { return new Symbol(sym.POUV) ;}
")"             { return new Symbol(sym.PFERM) ;}

\n              { return new Symbol(sym.EOL) ;}

[ \t]          {}
.                { System.out.println("caractere non reconnu ligne " + yyline + " : " + yytext() ); }

