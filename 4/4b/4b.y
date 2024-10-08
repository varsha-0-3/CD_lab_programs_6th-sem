%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int count = 0;
%}

%token EXP IF ELSE LPAREN RPAREN LF RF

%%
S: I;
I: IF E B {count++;};
E: LPAREN EXP RPAREN
|
;
B: LF B RF
| I
| EXP
|
;
%%

int main(){
	printf("Enter: ");
	yyparse();
	printf("Count is: %d", count);
	return 0;
}

void yyerror(const char* s){
	printf("Message %s\n", s);
	exit(0);
}
