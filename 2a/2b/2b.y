%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int yylex();
int yyerror();
%}

%token NUM;
%left '+' '-'
%left '*' '/'

%%
S: I {printf("Answer is %d\n", $$);};
I: I '+' I{$$ = $1 + $3 ;}
| I '-' I{$$ = $1 - $3 ;}
| I '*' I{$$ = $1 * $3 ;}
| I '/' I {if($3 == 0){yyerror();}else $$ = $1 / $3;}
| '('I')' {$$=$2;}
| NUM;
%%

int main(){
yyparse();
printf("VALID\n");
}

int yyerror(){
printf("INVALID\n");
exit(0);
}
