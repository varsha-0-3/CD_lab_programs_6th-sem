%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int count = 0;
int yylex();
int yyerror();
%}

%token LF RF LPAREN RPAREN ADD_ASSIGN SUB_ASSIGN INC DEC EQ LE GE FOR EXP NUM

%%
S: I;
I: FOR A B {count++;};
A: LPAREN E ';' E ';' E RPAREN;
E: EXP Z EXP
| EXP Z NUM
| EXP U
|
;
Z: ADD_ASSIGN| SUB_ASSIGN| LE| GE | EQ | '<' | '>' | '=';
U: INC|DEC;
B: LF B RF
| EXP
| I
| NUM
| EXP I
|
;
%%

int main(){
printf("Enter:\n");
 yyparse();
 printf("Count:%d", count);
 return 0;
}

int yyerror(const char *s){
	fprintf(stderr,"Error:%s", s );
	exit(1);
}
