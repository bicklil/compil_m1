//Specification jFLex

%%
%unicode
%int
%standalone
%line
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

%%

{MOTCLE} {System.out.println("MOTCLE");}
{TYPE} {System.out.println("TYPE");}
{IDENT} {System.out.println("IDENT");}
{REEL} {System.out.println("REEL");}
{ENTIER} {System.out.println("ENTIER");}
{OP_ARITH} {System.out.println("OP_ARITH");}
{OP_LOG} {System.out.println("OP_LOG");}
{OP_REL} {System.out.println("OP_REL");}
{AFFECT} {System.out.println("AFFECT");}
{SEP} {System.out.println("SEP");}
{CHAINE} {System.out.println("CHAINE");}
{COMMENT} {System.out.println("COMMENT");}
[\n\t ] {}
. {}
