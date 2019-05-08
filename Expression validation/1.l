%{d
#include<stdio.h>
#include"y.tab.h"
%}
%%
[0-9]+ {return NUMBER;}
[a-zA-Z0-9]+ {return ID;}
. {return yytext[0];}
%%

