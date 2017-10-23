
import java_cup.runtime.Symbol;

%%

%unicode
%cup
%line
%column

%eofval{
   return new Symbol(sym.EOF);
%eofval}

entier = [0-9]+
op_log = "||"|"&&"| "!"
op_rel = <|>|<=|>=|==|"!="
affect = "="
ident = [a-zA-Z_][a-zA-Z0-9_]*
reel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE][0-9]+)?
fauxreel = (([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+))([eE])
chaine = \"[^\"\n]*\"
faussechaine = \"[^\"\n]*
comment = "//".*\n

%%

int[ ]*main       { return new Symbol(sym.MAIN); }    
int              { return new Symbol(sym.TYPEINT); }
float|double     { return new Symbol(sym.TYPEFLOAT); }
char              { return new Symbol(sym.TYPECAR); }
{entier}         { return new Symbol(sym.ENTIER, new Integer(yytext())); }
{fauxreel}       { System.out.println("reel non reconnu ligne " + yyline + " : " + yytext() ); }
{reel}           { return new Symbol(sym.REEL, new Double(yytext())); }
"+"              { return new Symbol(sym.PLUS); }
"-"              { return new Symbol(sym.MOINS); }
"/"              { return new Symbol(sym.DIV); }
"*"              { return new Symbol(sym.MULT); }
{op_log}	 { System.out.println("OP_LOG : "+ yytext()); }
{op_rel}	 { return new Symbol(sym.OPREL); }
"("             { return new Symbol(sym.POUV) ;}
")"             { return new Symbol(sym.PFERM) ;}
"{"             { return new Symbol(sym.ACOUV) ;}
"}"             { return new Symbol(sym.ACFERM) ;}
,               { return new Symbol(sym.VIRG) ;}
;               { return new Symbol(sym.PTVIRG) ;}
if              { return new Symbol(sym.IF); }
else            { return new Symbol(sym.ELSE); }
for             { return new Symbol(sym.FOR); }
{ident}	 	{ return new Symbol(sym.IDENT,new String(yytext()));}
{faussechaine}  { System.out.println("chaine non terminee  ligne " + yyline + " : " + yytext() ); }
{chaine}	{ System.out.println("CHAINE : "+ yytext()); }
{comment}	{  }
{affect}	{ return new Symbol(sym.AFF); }

[ \n\t]          {}
.                { System.out.println("caractere non reconnu ligne " + yyline + " : " + yytext() ); }

