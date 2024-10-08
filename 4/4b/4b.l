%{
#include "y.tab.h"
%}

%%
"if" {return IF;}
"else" {return ELSE;}
"(" {return LPAREN;}
")" {return RPAREN;}
"{" {return LF;}
"}" {return RF;}
[a-zA-Z]+ {return EXP;}
.
\n
%%
