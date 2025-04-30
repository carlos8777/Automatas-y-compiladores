%{
#include <stdio.h>
#include <string.h>
#include "struct.h"

int yylex();
int yyerror();
symbtbl *globalPtr;
%}

%union {
    struct {
        int lineCount;
        symbtbl *data;
    };
}

%token <lineCount> NL
%token <data> IDENTIFIER CONST '<' '>' '=' '*' '(' ')'
%token SELECT FROM WHERE AND OR DELETE INSERT INTO VALUES
%type <data> expression logic condition attributeList

%%

program:
      statement
    | program statement
    | program error
    ;

statement:
      insertStmt
    | deleteStmt
    | selectStmt
    ;

selectStmt:
    SELECT attributeList FROM attributeList WHERE condition NL {
        globalPtr = putsymb($2, $4, $6);
    };

deleteStmt:
    DELETE FROM attributeList WHERE condition NL {
        globalPtr = putsymb("DELETE", $3, $5);
    };

insertStmt:
    INSERT INTO attributeList VALUES '(' attributeList ')' NL {
        globalPtr = putsymb("INSERT", $3, $6);
    };

attributeList:
      '*' { $$ = "ALL"; }
    | IDENTIFIER { $$ = $1; }
    | IDENTIFIER ',' attributeList {
        char* buffer = malloc(strlen($1) + strlen($3) + 2);
        strcpy(buffer, $1);
        strcat(buffer, " ");
        strcat(buffer, $3);
        $$ = buffer;
    };

condition:
      IDENTIFIER logic expression
    | '(' condition ')'
    | condition connector condition
    ;

expression:
      IDENTIFIER
    | CONST
    ;

logic:
      '<'
    | '='
    | '>'
    ;

connector:
      AND
    | OR
    ;

%%

int yyerror(char *msg) {
    printf("Syntax Error: %s\n", msg);
    return *msg;
}

int main() {
    char filename[] = "results.txt";
    remove(filename);  // Remove file if it exists

    yyparse();
    return 0;
}
