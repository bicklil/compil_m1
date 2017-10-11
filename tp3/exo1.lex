//Specification jFLex

import java_cup.runtime.Symbol;

%%
%unicode
%int
%standalone
%line
%cup
%column

LETTRE = [a-zA-Z]
ENTIER = [0-9]+
OP_ARITH = [+*-/]
OU = \|\|
ET = &&
NOT = \!
OP_LOG = {OU}|{ET}|{NOT}
OP_REL = (<|<=|==|\!|\!=)
AFFECT = (=)
IDENT = (_|{LETTRE})({LETTRE}|[0-9])+
TYPE = int|float|double|char
MOTCLE = if|else|for|while|do|break|return
SEP = [\{\};]
REEL = ([0-9]\.{ENTIER}(e|E){ENTIER})|(\.{ENTIER})|({ENTIER}\.)
CHAINE = \"[^\"]*\"
COMMENT = \/\/.*|"/*"~"*/"
ERREUR = (({ENTIER}([^0123456789])+)+)

%%

{MOTCLE} {return new Symbol(sym.MOTCLE, new String(yytext()));}
{TYPE} {return new Symbol(sym.TYPE, new String(yytext()));}
{IDENT} {return new Symbol(sym.Ident, new String(yytext()));}
{REEL} {return new Symbol(sym.REEL, new Double(yytext()));}
{ENTIER} {return new Symbol(sym.ENTIER, new Integer(yytext()));}
{OP_ARITH} {return new Symbol(sym.OP_ARITH);}
{OP_LOG} {return new Symbol(sym.OP_LOG);}
{OP_REL} {return new Symbol(sym.OP_REL);}
{AFFECT} {return new Symbol(sym.AFFECT);}
{SEP} {return new Symbol(sym.SEP);}
{CHAINE} {return new Symbol(sym.CHAINE, new String(yytext()));}
{COMMENT} {;}
{ERREUR} {System.out.println("inconnu : ligne ="+yyline+", colonne="+yycolumn);}
[\n\t ] {}
. {}
