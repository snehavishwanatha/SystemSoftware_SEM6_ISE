%{
#include<stdio.h>
int id=0, com=0, oper=0;
%}
%%
\/\/.* {com++;}
"/*"[^("*/")]+"*/" {com++;}
[+\-*/]            {oper++;}
"int"|"void"|"main"|"printf"|"include"|"stdio"|"h" {}
[a-zA-Z_][a-zA-Z0-9_]* {id++; ECHO;}
. ;
%%
int yywrap(){return 1;
fclose(yyin);}
void main()
{
  yyin=fopen("input.txt","r");
  yylex();
  printf("No. of identifiers=%d\n", id);
  printf("No. of comments=%d\n", com);
  printf("No. of operators=%d\n", oper);
  }
