%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%token NUM IDEN TYPE RET

%%
S: FUN{printf("Accepted\n"); exit(0);};

FUN: TYPE IDEN '(' PARAM ')''{'BODY'}';

PARAM: TYPE IDEN
| PARAM ',' PARAM
|
;

BODY: BODY STATEMENT
|
;

STATEMENT: TYPE IDEN '=' E ';'
| IDEN ';'
| RET IDEN ';'
;

E: IDEN '=' E 
| IDEN
| NUM
| E '+' E
| E '-' E
| E '*' E
| E '/' E
;
%%

int main(){
	printf("Enter:");
	yyparse();
	return 0;
}

void yyerror(const char* s){
	printf("INVALID %s\n", s);
	exit(1);	
}
