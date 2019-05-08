%{
#include<stdio.h>
int res =0;
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
expr:e {res = $$;}
e: e'+'e {$$=$1+$3;}|
	e'-'e {$$=$1-$3;}|
	e'*'e {$$=$1*$3;}|
	e'/'e {$$=$1/$3;}|
	'('e')' {$$=$2;}|
	NUM {$$=$1;};
%%
void main()
{
	printf("\nEnter an Arithmetic Expression: ");
	yyparse();
	printf("Result: %d\n",res);
}
void yyerror()
{
	printf("\nInvalid Expression\n");
}
