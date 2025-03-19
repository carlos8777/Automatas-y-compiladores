%option noyywrap
%{
	#include<stdio.h>
	#define TOKEN_COMENTARIO 1
%}

%%
\"([^\"\n]*)\"       { return TOKEN_COMENTARIO; }
"//".*               { return TOKEN_COMENTARIO; }
\/\[\n\t\0 a-zA-z0-9]\\/|\\\"[\s\S]\\\" { return TOKEN_COMENTARIO; }
[ \t\n]+               { }
.|\n                 { } 
%%
int main(int argc, char *argv[]) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");

        yyin = file;
	
    }
     while(1){
	token = yylex();
	if(token == TOKEN_COMENTARIO){
	printf("\n");
        printf("comentario encontrada: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	printf("\n");
	}
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}