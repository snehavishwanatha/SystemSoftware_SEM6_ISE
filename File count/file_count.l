%{
#include<stdio.h>
int chars=0,words=0,num=0,cons=0,spaces=0,lines=0,vowels=0,sc=0;
%}
%%
[aeiouAEIOU]	{vowels++; chars++;}
"\n"	{lines++; words++;}
" "	{words++; spaces++;}
[0-9]	{num++; chars++;}
[a-zA-Z]	{chars++; cons++;}
.	{sc++;}
%%
void main()
{
	yyin=fopen("input.txt","r");
	yylex();
	printf("Characters: %d\n",chars);
	printf("Words: %d\n",words);
	printf("Spaces: %d\n",spaces);
	printf("Lines: %d\n",lines);
	printf("Vowels: %d\n",vowels);
	printf("Digits: %d\n",num);
	printf("Consonants: %d\n",cons);
}
