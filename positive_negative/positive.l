%{
#include<stdio.h>
int p=0,n=0;
%}
%%
^"-"[0-9]+	{n++;}
^[0-9]+|^"+"[0-9]	{p++;}
.|"\n"	{}
%%
int main()
{
	yyin=fopen("numbers.txt","r");
	yylex();
	printf("Positive: %d\n",p);
	printf("Negative :%d\n",n);
	return 0;
}

