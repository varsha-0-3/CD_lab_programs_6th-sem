%{
#include "y.tab.h"
%}

%%
"for" {return FOR;}
"(" {return LPAREN;}
")" {return RPAREN;}
"{" {return LF;}
"}" {return RF;}
"+" {return '+';}
"-" {return '-';}
"*" {return '*';}
"/" {return '/';}
"<" {return '<';}
">" {return '>';}
";" {return ';';}
"<=" {return LE;}
">=" {return GE;}
"=" {return '=';}
"==" {return EQ;}
"++" {return INC;}
"--" {return DEC;}
"+=" {return ADD_ASSIGN;}
"-=" {return SUB_ASSIGN;}
[a-zA-Z]+ {return EXP;}
[0-9]+ {return NUM;}
[ \t]
.
\n return 0;
%%
