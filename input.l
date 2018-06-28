%{

// Arumugam T Pavai
// SID: 005777795
// CSE COMPILERS PROJECT
// Please refer to Output.docx for report and references

#include <stdlib.h>
#include "input.h"
#include "y.tab.h"

#define YYSTYPE float
void yyerror(char *);
%}

%%

[A-Z]       { 
                yylval.sIndex = *yytext - 'a';
                return VARIABLE;
            }

0           {
                yylval.iValue = atoi(yytext);
                return INTEGER;
            }

[0-9]+\.[0-9]+ {
                yylval.fValue = atof(yytext);
                return FLOAT;
            }
[1-9][0-9]* {
                yylval.iValue = atoi(yytext);
                return INTEGER;
            }

[-()<>=+*/;{}.\n] {
                return *yytext;
             }

">="            return GE;
"<="            return LE;
"=="            return EQ;
"!="            return NE;
"IF"            return IF;
"ELSE"          return ELSE;
"PRINT"         return PRINT;
"LET"			return LET;
"INPUT"			return INPUT;
"GOTO"			return GOTO;
"END"           return END;



[ \t]+        ;       /* ignore whitespace */

.               yyerror("Unknown character");

%%

int yywrap(void) {
    return 1;
}