%option noyywrap
%{ 
#include <stdlib.h>
#include <stdio.h> 
%}
 
 
seq [abc%]
perc [%]
 
%%
 
%[abc%]+% {
                                printf("Reconnu: %s",yytext);
                                
                             }
 
%%
 

 
int main()
{
  int d;
  printf("\nInput : \n");
  yylex();
  return 1;
}