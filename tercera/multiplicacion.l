/* Seccion de declaraciones 1, 3, 4, 5*/
%{
	#include<stdio.h>
	#include "y.tab.h"
	int yywrap();
	int yyerror(char *s);
	extern int yylval;

%}
/* Seccion de reglas */
%%
[0-9]+ {yylval = atoi(yytext); return NUMERO;}
"*" {return MULTI;}
\n { return EOL; }
[ \t\r] {}

%%
int yywrap(void)
{
	return 1;
}