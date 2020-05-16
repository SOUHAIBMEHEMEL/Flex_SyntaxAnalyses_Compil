%option noyywrap
%{
 
/*
1.Request input of an even and an odd number
2.indicate input characteristic : Even/Odd
3.check for input's correctness and print result
*/
 
#include <stdlib.h>
#include <stdio.h>
 
int number_1;
int number_2;
 
%}
 
 
seq [abc%]
perc [%]
 
%%
 
({perc})({seq})({seq})*({perc}) {
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