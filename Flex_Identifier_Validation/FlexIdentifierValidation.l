%{
#include <iostream>
int yyerror(const char* msg);
%}

%option noyywrap

%%

[a-zA-Z_][a-zA-Z0-9_]* {
//valid identifier output the text
    std::cout << "Valid identifier: " << yytext << std::endl;
}

. {
   //invalid character display error
   yyerror("invalid");

}

%%

int main() {

    yylex();
    return 0;
}
int yyerror(const char* msg) {
//error handling
 std::cerr << "Error: " << msg << " at line " << yylineno << std::endl;
 return 1;
}
