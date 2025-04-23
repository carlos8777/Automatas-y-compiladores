/* Seccion de declaraciones 1, 3, 4, 5*/
%{
	#include<stdio.h>
	#include "y.tab.h"
	extern YYSTYPE yylnal;
	int yywrap();
	int yyerror(char *s);
	extern int yylval;

%}
/* Seccion de reglas */
%%
[0-9]+ {yylval = atoi(yytext); return NUMBER;}
"+" {return PLUS;}
"-" {return MINUS;}
"*" {return TIMES;}
"/" {return DIVIDE;}
\n { return EOL; }
[ \t\r] {}

%%
int yywrap(void)
{
	return 1;
}
