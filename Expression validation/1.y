%{
#include<stdio.h>
%}
%token ID
%token NUMBER
%left '+' '-'
%left '*' '/'
%left '='
%%
E: E'+'E|E'-'E|E'*'E|E'/'E|E'='E|'('E')'|ID|NUMBER;
%%
void main()
{
	printf("Enter an Expression: ");
	yyparse();
	printf("\nValid Expression\n");
}
int yyerror(char *s)
{
	printf("\nInvalid Expression\n");
	exit(0);
}
