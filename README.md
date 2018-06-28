# CompilerProject
Translator using Lex and Yacc

The translator parses the input code according to the given grammar of modified tiny BASIC and generates a C code which can be compiled and tested. 

This project is a front end for a compiler, using C as an intermediate code.

Implemented for the coursework: http://www.cse.csusb.edu/egomez/cs670.html

Compiling and testing:

flex input.l

bison -dy input.y

gcc lex.yy.c y.tab.c

