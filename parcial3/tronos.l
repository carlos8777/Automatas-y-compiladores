%option noyywrap
%{
	#include<stdio.h>
	int westeros = 0;
	int invernalia = 0;
	int desembarco = 0;
	int nidodeaguilas = 0;
	int altojardin = 0;
	int aguasdulces = 0;
	int rocadragon = 0;
	int rocacasterly = 0;
	int bastiondetormentas = 0;
	int dorne = 0;

	int stark = 0;
	int arryn = 0;
	int tully = 0;
	int greyjoy = 0;
	int lannister = 0;
	int tyrell = 0;
	int martell = 0;
	int baratheon = 0;
	int targaryen = 0;

	int casa_stark = 0;
	int casa_baratheon = 0;
	int casa_targaryen = 0;
	int casa_lannister = 0;

	void funcionLugares(const char* texto, int var){
		printf("\nSe contaron %d del lugar %s\n" ,var,texto);
	}
	void funcionCasas(const char* texto, int var){
		printf("\nSe contaron %d de las casas %s\n" ,var,texto);
	}
	void funcionPersonajes(const char* texto, int var){
		printf("\nSe contaron %d personajes de la casa %s\n" ,var,texto);
	}
%}
A [AaÁá]
B [Bb]
C [Cc]
D [Dd]
E [Ee]
F [Ff]
G [Gg]
H [Hh]
I [IiÍí]
J [Jj]
K [Kk]
L [Ll]
M [Mm]
N [Nn]
O [OoÓó]
P [Pp]
Q [Qq]
R [Rr]
S [Ss]
T [Tt]
U [Uu]
V [Vv]
W [Ww]
X [Xx]
Y [Yy]
Z [Zz]
LAMATADORA .+

AA [\xC3\xC1\xC3\xE1]  
EE [\xC3\xC9\xC3\xE9]  
II [\xC3\xCD\xC3\xED]  
OO [\xC3\xD3\xC3\xF3]  
UU [\xC3\xDA\xC3\xFA]  
ENE [\xC3\xD1\xC3\xF1]  
ESPACIO [" "]
%%
{W}{E}{S}{T}{E}{R}{O}{S} {westeros++;}
{I}{N}{V}{E}{R}{N}{A}{L}{I}{A} {invernalia++;}
{D}{E}{S}{E}{M}{B}{A}{R}{C}{O}{ESPACIO}{D}{E}{L}{ESPACIO}{R}{E}{Y} {desembarco++;}
{N}{I}{D}{O}{ESPACIO}{D}{E}{ESPACIO}{LAMATADORA}{G}{U}{I}{L}{A}{S} {nidodeaguilas++; }
{A}{L}{T}{O}{J}{A}{R}{D}{LAMATADORA}{N} {altojardin++; }
{A}{G}{U}{A}{S}{D}{U}{L}{C}{E}{S} {aguasdulces++; }
{R}{O}{C}{A}{D}{R}{A}{G}{LAMATADORA}{N} {rocadragon++; }
{R}{O}{C}{A}{ESPACIO}{C}{A}{S}{T}{E}{R}{L}{Y} {rocacasterly++; }
{B}{A}{S}{T}{I}{LAMATADORA}{N}{ESPACIO}{D}{E}{ESPACIO}{T}{O}{R}{M}{E}{N}{T}{A}{S} {bastiondetormentas++; }
{D}{O}{R}{N}{E} {dorne++; }
{S}{T}{A}{R}{K} {stark++; }
{A}{R}{R}{Y}{N} {arryn++; }
{T}{U}{L}{L}{Y} {tully++; }
{G}{R}{E}{Y}{J}{O}{Y} {greyjoy++; }
{L}{A}{N}{N}{I}{S}{T}{E}{R} {lannister++; }
[T][Y][R][E][L][L] {tyrell++; }
{M}{A}{R}{T}{E}{L}{L} {martell++; }
{B}{A}{R}{A}{T}{H}{E}{O}{N} {baratheon++; }
{T}{A}{R}{G}{A}{R}{Y}{E}{N} {targaryen++; }
{E}{D}{D}{A}{R}{D} {casa_stark += yyleng; }
{C}{A}{T}{E}{L}{Y}{N} {casa_stark += yyleng; }
{A}{R}{Y}{A} {casa_stark += yyleng; }
{S}{A}{N}{S}{A} {casa_stark += yyleng; }
{R}{O}{B}{E}{R}{T} {casa_baratheon += yyleng; }
{J}{O}{F}{F}{R}{E}{Y} {casa_baratheon += yyleng; }
{S}{T}{A}{N}{N}{I}{S} {casa_baratheon += yyleng; }
{A}{E}{G}{O}{N} {casa_targaryen += yyleng; }
{D}{A}{E}{N}{E}{R}{Y}{S} {casa_targaryen += yyleng; }
{A}{E}{R}{Y}{S} {casa_targaryen += yyleng; }
{T}{Y}{W}{I}{N} {casa_lannister += yyleng; }
{J}{A}{I}{M}{E} {casa_lannister += yyleng; }
{T}{Y}{R}{I}{O}{N} {casa_lannister += yyleng; }
{C}{E}{R}{S}{E}{I} {casa_lannister += yyleng; }
. {}

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
    funcionLugares("Westeros", westeros);
    funcionLugares("Invernalia", invernalia);
    funcionLugares("Desembarco del rey", desembarco);
    funcionLugares("Nido del aguilas", nidodeaguilas);
    funcionLugares("Altojardín", altojardin);
    funcionLugares("Aguasdulces", aguasdulces);
    funcionLugares("Rocadragon", rocadragon);
    funcionLugares("Roca Casterly", rocacasterly);
    funcionLugares("Bastion de tormentas", bastiondetormentas);
    funcionLugares("Dorne", dorne);
    funcionCasas("Stark", stark);
    funcionCasas("Arryn", arryn);
    funcionCasas("Tully", tully);
    funcionCasas("Greyjoy", greyjoy);
    funcionCasas("Lannister", lannister);
    funcionCasas("Tyrell", tyrell);
    funcionCasas("Martell", martell);
    funcionCasas("Baratheon", baratheon);
    funcionCasas("Targaryen", targaryen);
    funcionPersonajes("Stark", casa_stark);
    funcionPersonajes("Baratheon", casa_baratheon);
    funcionPersonajes("Targaryen", casa_targaryen);
    funcionPersonajes("Lannister", casa_lannister);

	return 0;
}
