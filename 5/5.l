%{
    #include "y.tab.h"
%}

%%
"int"|"float"|"char"|"void" {return TYPE;}
[a-zA-Z][a-zA-Z0-9_]* {return IDEN;}
[0-9]+ {return NUM;}
"[" {return '[';}
"]" {return ']';}
";" {return ';';}
"," {return ',';}
[ \n\t]
.
%%

int yywrap(){
return 1;
}
