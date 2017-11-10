all: parser
	clear
	java parser

parser:sym.java parser.java Yylex.java
	javac sym.java parser.java Yylex.java

sym.java: analyse.cup
	java java_cup.Main analyse.cup

parser.java: analyse.cup
	java java_cup.Main analyse.cup

Yylex.java:spec.lex
	java JFlex.Main spec.lex
