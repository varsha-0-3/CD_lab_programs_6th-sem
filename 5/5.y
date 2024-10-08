%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int var_count = 0;
void yyerror(const char *s);
int yylex();
%}

%token TYPE IDEN NUM

%%
program: declarations;
declarations: declaration ';'
| declarations declaration ';'
;
declaration: TYPE var_list ;
var_list: var
| var_list ',' var
;
var: IDEN {var_count++;}
| IDEN '['']' {var_count++;}
|IDEN '['NUM']' {var_count++;};
%%

int main(){
	printf("Enter:");
	yyparse();
	printf("Number of declarations: %d\n", var_count);
	return 0;
}

void yyerror(const char *s){
	fprintf(stderr, "Error: %s", s);
}
