%option noyywrap
%{
 
/* exo   */
 
#include <stdlib.h>
#include <stdio.h>
 
%}  
 
%%
 
[0-9A-Za-z]{8} {
                                printf("mot de passe: %s",yytext);
                               
                             }
 
[0-9A-Za-z]* {
                                printf("identifier: %s",yytext);
                                
                              }
%%
 

 
int main()
{
  yylex();
  return 1;
}