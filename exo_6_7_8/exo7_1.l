%option noyywrap
%{
  
#include <stdlib.h>
#include <stdio.h>
char debut_ligne='u';
 
%}
 
%start INIT E1 E2 E3 E4
 
%%

 
^E {BEGIN E1;}
^U { BEGIN E2;}
^L {BEGIN E3;}
^. {BEGIN E4;}

<E1>1CS { fprintf(yyout, "2CSSIQ");}
<E2>1CS { fprintf(yyout, "2CSSIL");}
<E3>1CS { fprintf(yyout, "2CSSIT");}



 
%%
 

 
int main()
{
  int d;
  FILE *input = fopen("input_exo7.txt", "r");
  FILE *output = fopen("output_exo7.txt", "w");
  yyout = output;
  
		if(input)
		yyin = input;
		
  yylex();
  return 1;
}