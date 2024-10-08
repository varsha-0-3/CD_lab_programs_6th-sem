%{
int c = 0, w = 0, s = 0, l = 0;
%}

%%
[a-zA-Z]+ {w++; c =c + yyleng;}
[ ] {s++;}
[\t] { s = s + 3;}
[.] l++;
. 
\n
%%

int main(){
	printf("Enter the string: ");
	yylex();
	printf("char: %d, words:%d, space: %d, lines: %d", c, w, s, l);
	return 0;
}
