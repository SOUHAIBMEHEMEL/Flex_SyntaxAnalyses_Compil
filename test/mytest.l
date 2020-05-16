%option noyywrap 
%{
#include <stdlib.h>
#include <stdio.h>
%}

motcle main|if|else|while|do|of|break
id [A-Za-z][A-Za-z0-9]*
const [0-9]+
op1 >=|=<
op [<>+-=]


%%

{motcle} { fprintf(yyout, "\n(mot-cle,%s)\n",yytext);}
{id} { fprintf(yyout, "\n(identificateur,%s)\n",yytext);}
{const} { fprintf(yyout, "\n(constant,%s)\n",yytext);}
{op1} { fprintf(yyout, "\n(operateur,%s)\n",yytext);}
{op} { fprintf(yyout, "\n(operateur,%s)\n",yytext);}

%%
int main()
{
  FILE *input = fopen("input.txt", "r");
  FILE *output = fopen("output.txt", "w");
  yyout = output;
  
		if(input)
		yyin = input;
		
  yylex();
  return 1;
}