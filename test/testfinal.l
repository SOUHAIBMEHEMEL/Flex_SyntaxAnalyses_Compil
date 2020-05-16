%option noyywrap 
%{
#include <stdio.h>
#include <stdlib.h>
%}

motcle main|if|else|while|do|of|break
op1 >=  | =<
op =| <| +
const [0-9][0-9]+
num [0-9]{1}
id [A-Za-z]+

%%

{motcle} { fprintf(yyout, "\n(mot-cle,%s)\n",yytext);}
{id} { fprintf(yyout, "\n(identificateur,%s)\n",yytext);}

%%

int main (){

FILE* input=fopen("input.txt","r");
FILE* output=fopen("output.txt","w");
yyout= output;
if(input) yyin=input;
yylex();
return 1;

}