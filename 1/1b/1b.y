%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%%
S:B C;
B:'a'B'b'|;
C: 'b'C'c'
|
;
%%

int main(){
yyparse();
printf("VALID STRING");
return 0;
}

int yyerror(){
	printf("INVALID");
	exit(0);
}
