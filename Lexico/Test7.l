%{
#include <stdio.h>
#include <ctype.h>
%}

%%
[A-Z] { putchar(tolower(yytext[0])); }
.    { putchar(yytext[0]); }
\n   { putchar('\n'); }
%%

int main(int argc, char *argv[]) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");

        yyin = file;
	
    }
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}