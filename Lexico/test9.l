%{

#include <stdio.h>
#define TOKEN_BLOOM 1
#define TOKEN_ADJETIVO 2
#define TOKEN_CONJUNCION 3
#define TOKEN_PREPOSICION 4
#define TOKEN_PRONOMBRE 5

%}

%%


[Aa][Nn][Aa][Ll][Ii][Zz][Aa][Rr] {return TOKEN_BLOOM; }
[Cc][Aa][Ll][Cc][Uu][Ll][Aa][Rr] {return TOKEN_BLOOM; }
[Cc][Aa][Tt][Aa][Ll][Oo][Gg][Aa][Rr] {return TOKEN_BLOOM; }
[Cc][Aa][Tt][Ee][Gg][Oo][Rr][Ii][Zz][Aa][Rr] {return TOKEN_BLOOM; }
[Cc][Oo][Mm][Pp][Aa][Rr][Aa][Rr] {return TOKEN_BLOOM; }
[Cc][Oo][Nn][Tt][Rr][Aa][Ss][Tt][Aa][Rr] {return TOKEN_BLOOM; }
[Cc][Rr][Ii][Tt][Ii][Cc][Aa][Rr] {return TOKEN_BLOOM; }
[Cc][Uu][Ee][Ss][Tt][Ii][Oo][Nn][Aa][Rr] {return TOKEN_BLOOM; }
[Dd][Ee][Bb][Aa][Tt][Ii][Rr] {return TOKEN_BLOOM; }
[Dd][Ii][Ff][Ee][Rr][Ee][Nn][Cc][Ii][Aa][Rr] {return TOKEN_BLOOM; }
[Dd][Ii][Ss][Cc][Rr][Ii][Mm][Ii][Nn][Aa][Rr] {return TOKEN_BLOOM; }
[Dd][Ii][Ss][Cc][Uu][Tt][Ii][Rr] {return TOKEN_BLOOM; }
[Dd][Ii][Ss][Tt][Ii][Nn][Gg][Uu][Ii][Rr] {return TOKEN_BLOOM; }
[Ee][Xx][Aa][Mm][Ii][Nn][Aa][Rr] {return TOKEN_BLOOM; }
[Ee][Xx][Pp][Ee][Rr][Ii][Mm][Ee][Nn][Tt][Aa][Rr] {return TOKEN_BLOOM; }
[Ee][Xx][Pp][Ll][Ii][Cc][Aa][Rr] {return TOKEN_BLOOM; }
[Ii][Dd][Ee][Nn][Tt][Ii][Ff][Ii][Cc][Aa][Rr] {return TOKEN_BLOOM; }
[Ii][Nn][Ss][Pp][Ee][Cc][Cc][Ii][Oo][Nn][Aa][Rr] {return TOKEN_BLOOM; }
[Ii][Nn][Vv][Ee][Ss][Tt][Ii][Gg][Aa][Rr] {return TOKEN_BLOOM; }
[Ll][Oo][Gg][Rr][Aa][Rr] {return TOKEN_BLOOM; }
[Oo][Rr][Gg][Aa][Nn][Ii][Zz][Aa][Rr] {return TOKEN_BLOOM; }
[Pp][Rr][Oo][Bb][Aa][Rr] {return TOKEN_BLOOM; }
[Rr][Ee][Ll][Aa][Tt][Aa][Rr] {return TOKEN_BLOOM; }
[Rr][Ee][Ss][Oo][Ll][Vv][Ee][Rr] {return TOKEN_BLOOM; }
[Aa][Bb][Ii][Ee][Rr][Tt][Oo] {return TOKEN_ADJETIVO; }  
[Dd][Ii][Pp][Ll][Oo][Mm][Aa][Tt][Ii][Cc][Oo] {return TOKEN_ADJETIVO; }  
[Oo][Bb][Jj][Ee][Tt][Ii][Vv][Oo] {return TOKEN_ADJETIVO; }  
[Aa][Cc][Tt][Ii][Vv][Oo] {return TOKEN_ADJETIVO; }  
[Dd][Ii][Ss][Cc][Rr][Ee][Tt][Oo] {return TOKEN_ADJETIVO; }  
[Oo][Pp][Tt][Ii][Mm][Ii][Ss][Tt][Aa] {return TOKEN_ADJETIVO; }  
[Aa][Dd][Aa][Pp][Tt][Aa][Bb][Ll][Ee] {return TOKEN_ADJETIVO; }  
[Ee][Cc][Uu][Aa][Nn][Ii][Mm][Ee] {return TOKEN_ADJETIVO; }  
[Oo][Rr][Dd][Ee][Nn][Aa][Dd][Oo] {return TOKEN_ADJETIVO; }  
[Aa][Ff][Aa][Bb][Ll][Ee] {return TOKEN_ADJETIVO; }  
[Ee][Ff][Ii][Cc][Aa][Zz] {return TOKEN_ADJETIVO; }  
[Oo][Rr][Gg][Aa][Nn][Ii][Zz][Aa][Dd][Oo] {return TOKEN_ADJETIVO; }  
[Ee][Ff][Ii][Cc][Ii][Ee][Nn][Tt][Ee] {return TOKEN_ADJETIVO; }  
[Pp][Aa][Cc][Ii][Ee][Nn][Tt][Ee] {return TOKEN_ADJETIVO; }  
[Aa][Ll][Ee][Rr][Tt][Aa] {return TOKEN_ADJETIVO; }  
[Ee][Jj][Ee][Cc][Uu][Tt][Ii][Vv][Oo] {return TOKEN_ADJETIVO; }  
[Pp][Ee][Rr][Cc][Ee][Pp][Tt][Ii][Vv][Oo] {return TOKEN_ADJETIVO; }  
[Aa][Mm][Aa][Bb][Ll][Ee] {return TOKEN_ADJETIVO; }  
[Ee][Mm][Pp][Rr][Ee][Nn][Dd][Ee][Dd][Oo][Rr] {return TOKEN_ADJETIVO; }  
[Pp][Ee][Rr][Ss][Ii][Ss][Tt][Ee][Nn][Tt][Ee] {return TOKEN_ADJETIVO; }  
[Aa][Mm][Bb][Ii][Cc][Ii][Oo][Ss][Oo] {return TOKEN_ADJETIVO; }  
[Ee][Nn][Éé][Rr][Gg][Ii][Cc][Oo] {return TOKEN_ADJETIVO; }  
[Pp][Ee][Rr][Ss][Uu][Aa][Ss][Ii][Vv][Oo] {return TOKEN_ADJETIVO; }  
[Ee][Nn][Tt][Rr][Ee][Gg][Aa][Dd][Oo] {return TOKEN_ADJETIVO; }  
[Pp][Oo][Ll][Ii][Vv][Aa][Ll][Ee][Nn][Tt][Ee] {return TOKEN_ADJETIVO; }  
[Ee][Nn][Tt][Uu][Ss][Ii][Aa][Ss][Tt][Aa] {return TOKEN_ADJETIVO; }  
[Pp][Oo][Nn][Dd][Ee][Rr][Aa][Dd][Oo] {return TOKEN_ADJETIVO; }  
[Aa][Nn][Ii][Mm][Oo][Ss][Oo] {return TOKEN_ADJETIVO; }  
[Ee][Ss][Pp][Ee][Cc][Ii][Aa][Ll][Ii][Zz][Aa][Dd][Oo] {return TOKEN_ADJETIVO; }  
[Pp][Oo][Ss][Ii][Tt][Ii][Vv][Oo] {return TOKEN_ADJETIVO; }  
[Aa][Ss][Ee][Rr][Tt][Ii][Vv][Oo] {return TOKEN_ADJETIVO; }  
[Ee][Ss][Tt][Aa][Bb][Ll][Ee] {return TOKEN_ADJETIVO; }  
[Pp][Rr][Áá][Cc][Tt][Ii][Cc][Oo] {return TOKEN_ADJETIVO; }  
[Aa][Tt][Ee][Nn][Tt][Oo] {return TOKEN_ADJETIVO; }  
[Pp][Rr][Ee][Cc][Aa][Vv][Ii][Dd][Oo] {return TOKEN_ADJETIVO; }  
[Aa][Uu][Tt][Éé][Nn][Tt][Ii][Cc][Oo] {return TOKEN_ADJETIVO; }  
[Pp][Rr][Ee][Cc][Ii][Ss][Oo] {return TOKEN_ADJETIVO; }  
[Cc][Aa][Pp][Aa][Zz] {return TOKEN_ADJETIVO; }  
[Ee][Ll][Ee][Gg][Aa][Nn][Tt][Ee] {return TOKEN_ADJETIVO; }  
[Pp][Rr][Ee][Vv][Ii][Ss][Oo][Rr] {return TOKEN_ADJETIVO; }  
[Cc][Aa][Rr][Áá][Cc][Tt][Ee][Rr] {return TOKEN_ADJETIVO; }  
[Pp][Rr][Oo][Dd][Uu][Cc][Tt][Ii][Vv][Oo] {return TOKEN_ADJETIVO; }  
[Ee][Xx][Tt][Rr][Oo][Vv][Ee][Rr][Tt][Ii][Dd][Oo] {return TOKEN_ADJETIVO; }  
[Pp][Uu][Nn][Tt][Uu][Aa][Ll] {return TOKEN_ADJETIVO; }  
[Ss][Oo][Cc][Ii][Aa][Bb][Ll][Ee] {return TOKEN_ADJETIVO; }  
[Cc][Oo][Ll][Aa][Bb][Oo][Rr][Aa][Dd][Oo][Rr] {return TOKEN_ADJETIVO; }  
[^a-zA-Z][Yy][^a-zA-Z] {return TOKEN_CONJUNCION; } 
[^a-zA-Z][Ee][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Nn][Ii][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Pp][Ee][Rr][Oo][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Aa][Uu][Nn][Qq][Uu][Ee][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Oo][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Uu][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Ss][Ii][Nn][Oo][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Pp][Oo][Rr][Qq][Uu][Ee][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Pp][Uu][Ee][Ss][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Cc][Uu][Aa][Nn][Dd][Oo][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Dd][Oo][Nn][Dd][Ee][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Mm][Ii][Ee][Nn][Tt][Rr][Aa][Ss][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Cc][Oo][Mm][Oo][^a-zA-Z] {return TOKEN_CONJUNCION; }  
[^a-zA-Z][Qq][Uu][Ee][^a-zA-Z] {return TOKEN_CONJUNCION; } 
[^a-zA-Z][Aa][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Aa][Nn][Tt][Ee][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Bb][Aa][Jj][Oo][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Cc][Aa][Bb][Ee][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Cc][Oo][Nn[^a-zA-Z]] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Cc][Oo][Nn][Tt][Rr][Aa][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Dd][Ee] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Dd][Ee][Ss][Dd][Ee][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Ee][Nn][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Ee][Nn][Tt][Rr][Ee][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Hh][Aa][Cc][Ii][Aa][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Hh][Aa][Ss][Tt][Aa][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Pp][Aa][Rr][Aa][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Pp][Oo][Rr][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Ss][Ee][Gg][Úú][Nn][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Ss][Ii][Nn][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Ss][Oo][Bb][Rr][Ee][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Tt][Rr][Aa][Ss][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Dd][Uu][Rr][Aa][Nn][Tt][Ee][^a-zA-Z] {return TOKEN_PREPOSICION; }  
[^a-zA-Z][Mm][Ee][Dd][Ii][Aa][Nn][Tt][Ee][^a-zA-Z] {return TOKEN_PREPOSICION; } 
[^a-zA-Z][Yy][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Tt][Úú][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Éé][Ll][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ee][Ll][Ll][Aa][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Nn][Oo][Ss][Oo][Tt][Rr][Oo][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Nn][Oo][Ss][Oo][Tt][Rr][Aa][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Vv][Oo][Ss][Oo][Tt][Rr][Oo][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Vv][Oo][Ss][Oo][Tt][Rr][Aa][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ee][Ll][Ll][Oo][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ee][Ll][Ll][Aa][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Mm][Ee][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Tt][Ee][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ss][Ee][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Nn][Oo][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Oo][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ll][Ee][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ll][Ee][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ll][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ll][Aa][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ll][Oo][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ll][Aa][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Mm][Íí][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Mm][Íí][Aa][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Tt][Uu][Yy][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Tt][Uu][Yy][Aa][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ss][Uu][Yy][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ss][Uu][Yy][Aa][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Nn][Uu][Ee][Ss][Tt][Rr][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Nn][Uu][Ee][Ss][Tt][Rr][Aa][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Vv][Uu][Ee][Ss][Tt][Rr][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Vv][Uu][Ee][Ss][Tt][Rr][Aa][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Qq][Uu][Ii][Ee][Nn][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Cc][Uu][Yy][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Cc][Uu][Aa][Ll][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Qq][Uu][Ee[^a-zA-Z]] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ee][Ss][Tt][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Ee][Ss][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Aa][Qq][Uu][Ee][Ll][Ll][Oo][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Aa][Ll][Gg][Uu][Ii][Ee][Nn][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Nn][Aa][Dd][Ii][Ee][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Cc][Uu][Aa][Ll][Qq][Uu][Ii][Ee][Rr][Aa][^a-zA-Z] {return TOKEN_PRONOMBRE; }  
[^a-zA-Z][Tt][Oo][Dd][Oo][Ss][^a-zA-Z] {return TOKEN_PRONOMBRE; }  

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
	if(token == TOKEN_BLOOM){
	printf("\n");
        printf("verbo de la taxonomia de bloom reconocido: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	printf("\n");
	}
	if(token == TOKEN_ADJETIVO){
	printf("\n");
        printf("adjetivo reconocido: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	printf("\n");
	}
	if(token == TOKEN_CONJUNCION){
	printf("\n");
        printf("conjuncion reconocida: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	printf("\n");
	}
	if(token == TOKEN_PREPOSICION){
	printf("\n");
        printf("preposicion reconocida: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	printf("\n");
	}
	if(token == TOKEN_PRONOMBRE){
	printf("\n");
        printf("pronombre reconocido: ");
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