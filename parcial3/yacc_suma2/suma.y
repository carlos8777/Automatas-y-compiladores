/* Seccion de declaraciones C */


%{
	#include<stdio.h>
	#include<stdlib.h>
	int yylex(void);
	int yyerror(const char *s){
		fprintf(stderr,"Error: %s\n",s);
		return 0;
	}
%}
/* Seccion de declaraciones */
%token NUMBER PLUS MINUS TIMES DIVIDE EOL
%start statements

/* Reglas de la gramatica */
%%
statements	: statement statements|statement;
statement	: expression EOL { printf("= %d\n", $1);};
expression	: NUMBER { $$ = $1; printf("number: %d\n", $$); } | expression PLUS expression { $$ = $1 + $3; printf("+: %d\n", $$); }
		| expression MINUS expression { $$ = $1 - $3; printf("-: %d\n", $$); }
		| expression TIMES expression { $$ = $1 * $3; printf("*: %d\n", $$); }
		| expression DIVIDE expression { $$ = $1 / $3; printf("/: %d\n", $$); };
%%

int main(void){
	return yyparse();
}