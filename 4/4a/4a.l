%{
    #include<stdio.h>
    int id=0,key=0,op=0;
%}

%%
"int"|"char"|"float"|"double"|"if"|"else"|"for"|"while"|"exit"|"return"|"main"|"auto"|"break"|"struct"|"union"|"typedef"|"unsigned" {key++;}
[a-zA-Z_][a-zA-Z0-9_]*  {id++;}
[\+\-\*\/\%\^\&\|\!\=]  {op++;}
"#include".* 
[ \t]
[0-9]+ 
.
\n
%%

int yywrap(){
	return 1;
}

int main()
{
    yyin = fopen("4a.txt", "r");
    yylex();
    printf("Identifiers: %d\nKeywords: %d\nOperators: %d\n",id,key,op);
    return 0;
}
