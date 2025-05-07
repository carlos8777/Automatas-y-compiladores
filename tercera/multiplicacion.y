%{
    #include <stdio.h>
    #include <stdlib.h>
    int yylex(void);
    int yyerror(const char *s) {
        fprintf(stderr, "Error: %s\n", s);
        return 0;
    }
%}

%token NUMERO MULTI EOL
%start statements

%%
statements : NUMERO MULTI NUMERO EOL { printf("Esta expresion esta correctamente construida\n"); }
          ;
%%

int main(void) {
    return yyparse();
}
