%{
#include <stdio.h>
#include <string.h>
#define TOKEN_RESERVADA 1
#define TOKEN_DATO 2
#define TOKEN_VARIABLE 3
%}

%%
[^a-zA-Z]auto[^a-zA-Z] {return TOKEN_RESERVADA; }
[^a-zA-Z]break[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]case[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]const[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]continue[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]default[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]do[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]else[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]enum[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]extern[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]for[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]goto[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]if[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]inline[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]register[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]restrict[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]return[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]sizeof[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]static[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]struct[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]switch[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]typedef[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]union[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]volatile[^a-zA-Z] { return TOKEN_RESERVADA; }
[^a-zA-Z]while[^a-zA-Z] { return TOKEN_RESERVADA; }

[^a-zA-Z]int[^a-zA-Z] {return TOKEN_DATO; }
[^a-zA-Z]float[^a-zA-Z] {return TOKEN_DATO; }
[^a-zA-Z]double[^a-zA-Z] {return TOKEN_DATO; }
[^a-zA-Z]char[^a-zA-Z] {return TOKEN_DATO; }
[^a-zA-Z]void[^a-zA-Z] {return TOKEN_DATO; }
[^a-zA-Z]long[^a-zA-Z] {return TOKEN_DATO; }
[^a-zA-Z]short[^a-zA-Z] {return TOKEN_DATO; }
[^a-zA-Z]unsigned[^a-zA-Z] {return TOKEN_DATO; }
[^a-zA-Z]signed[^a-zA-Z] {return TOKEN_DATO; }

[a-zA-Z][a-zA-Z0-9_]* {return TOKEN_VARIABLE; }
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
	if(token == TOKEN_RESERVADA){
	printf("\n");
        printf("palabra reservada encontrada: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	printf("\n");
	}
	if(token == TOKEN_DATO){
	printf("\n");
        printf("tipo de datp reconocido: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	printf("\n");
	}
	if(token == TOKEN_VARIABLE){
	printf("\n");
        printf("variable reconocida: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}	
	printf("\n");
	}
	if(token == 0){
	break;
	}
	}
	return 0;
}

int yywrap() {
    return 1;
}