%{
	#include <stdlib.h>	
	#include <stdio.h>
%}
%token A B
%% 
	s: A a b
	a: A a | A
	b: B b | B;
%%
main()
{
	printf("Enter input:");
	yyparse();
	printf("Valid String\n");
	return;
}

int yyerror( char *s)
{
	printf("Invalid String!\n");
	exit(1);
}
