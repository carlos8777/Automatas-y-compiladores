%{

#include <stdio.h>
#include <ctype.h>
#define TOKEN_COINCIDENCIA 1

%}

%%


[Cc][Aa][Ll][Cc][Uu][Ll][Aa][Rr] {return TOKEN_COINCIDENCIA; }
[Dd][Ee][Mm][Oo][Ss][Tt][Rr][Aa][Rr] {return TOKEN_COINCIDENCIA; }
[Ii][Ll][Uu][Ss][Tt][Rr][Aa][Rr] {return TOKEN_COINCIDENCIA; }
[Ii][Nn][Tt][Ee][Rr][Pp][Rr][Ee][Tt][Aa][Rr] {return TOKEN_COINCIDENCIA; }
[Oo][Pp][Ee][Rr][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Pp][Rr][Aa][Cc][Tt][Ii][Cc][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Rr][Ee][Ss][Oo][Ll][Vv][Ee][Rr] { return TOKEN_COINCIDENCIA; }
[Uu][Ss][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Aa][Pp][Ll][Ii][Cc][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Cc][Ll][Aa][Ss][Ii][Ff][Ii][Cc][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Cc][Oo][Mm][Pp][Ll][Ee][Tt][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Cc][Oo][Nn][Ss][Tt][Rr][Uu][Ii][Rr] { return TOKEN_COINCIDENCIA; }
[Dd][Ii][Bb][Uu][Jj][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Ee][Jj][Ee][Cc][Uu][Tt][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Ee][Mm][Pp][Ll][Ee][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Ee][Xx][Aa][Mm][Ii][Nn][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Ee][Xx][Pp][Ee][Rr][Ii][Mm][Ee][Nn][Tt][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Mm][Oo][Ss][Tt][Rr][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Pp][Ll][Aa][Nn][Ee][Aa][Rr] { return TOKEN_COINCIDENCIA; }
[Pp][Rr][Oo][Gg][Rr][Aa][Mm][Aa][Rr] { return TOKEN_COINCIDENCIA; }

%%

int main(int argc, char **argv) {
int token;
char mayus;
int x;
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");

        yyin = file;
    }
    while(1){
	token = yylex();
	if(token == TOKEN_COINCIDENCIA){
	printf("\n------------------------------------------\n");
        printf("verbo de la taxonomia de bloom reconocido: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	printf("\n");
	}
	if(token==0){
	break;
	}
	}
	return 0;
}

int yywrap() {
    return 1;
}