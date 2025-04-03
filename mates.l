%option noyywrap
%option yylineno

%{
    #include <stdio.h>

    int cont_linea = 1;
    int cont_palabra = 0;
    int cont_caracter = 0;
    int cont_ni = 0;
    int cont_num = 0;
    int cont_bto = 0;
    int cont_jo = 0;
    int cont_numero = 0;
    int total_dig = 0;
%}

%%

 

[Nn][Ii][a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x910-9]* { cont_ni++; cont_caracter++; }
[Nn][Uu]|\xC3\xBA|\xC3\x9A)[Mm][a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x910-9]* { cont_num++; cont_caracter++; }
[Bb][a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x910-9]*[Tt][Oo] { cont_bto++; cont_caracter++; }
[a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x910-9]*[Jj][Oo] { cont_jo++; cont_caracter++; }
[0-9]+ { total_dig += yyleng; cont_numero++; }
[a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x910-9]+ { cont_palabra++; cont_caracter += yyleng; }
\n { cont_linea++; cont_caracter++; }
. { cont_caracter++; }


%%

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Error: Debes proporcionar un archivo de entrada.\n");
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if (!file) {
        printf("Error: No se pudo abrir el archivo %s.\n", argv[1]);
        return 1;
    }

    yyin = file;
    yylex();  // Llama al analizador léxico
    fclose(file);

    printf("Cantidad total de lineas: %d\n", cont_linea);
    printf("Cantidad total de caracteres: %d\n", cont_caracter);
    printf("Palabras que inician con 'ni': %d\n", cont_ni);
    printf("Palabras que inician con 'num': %d\n", cont_num);
    printf("Palabras que inician con 'b' y terminan con 'to': %d\n", cont_bto);
    printf("Palabras que terminan con 'jo': %d\n", cont_jo);
    printf("Cantidad de numeros: %d\n", cont_numero);
    printf("Cantidad total de digitos: %d\n", total_dig);

    return 0;
}