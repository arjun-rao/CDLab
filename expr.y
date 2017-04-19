%{
	#include <stdlib.h>	
	#include <stdio.h>
%}
%token '*' '+' '(' ')' a
%% 
	s: t e
	e: '+' t e |
	t: f r
	r: '*' f r |
	f: '(' s ')' | a
%%
int main()
{
	printf("Enter input:");
	yyparse();
	printf("Valid String\n");
	return 0;
}

int yyerror( char *s)
{
	printf("Invalid String!\n");
	exit(1);
}
