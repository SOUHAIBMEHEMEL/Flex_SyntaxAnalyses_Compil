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
                                return 1;
                             }
 
%%
 

 
int main()
{
  int d;
  printf("\nInput : \n");
  yylex();
  scanf("%d",&d);
  return 1;
}