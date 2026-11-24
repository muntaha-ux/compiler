%{
#include<stdio.h>
#include "parser.tab.h"
%}

%option noyywrap
%%
"p" {return P;}
"q" {return Q;}

%%

