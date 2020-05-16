%option noyywrap
%{
 
/* exo   */
 
#include <stdlib.h>
#include <stdio.h>
 
%}  
 
%%
 
1CS { fprintf(yyout, "2CSSIT");}

%%
 

 
int main()
{
  FILE *input = fopen("input_exo6.txt", "r");
  FILE *output = fopen("output_exo6.txt", "w");
  yyout = output;
  
		if(input)
		yyin = input;
		
  yylex();
  return 1;
}