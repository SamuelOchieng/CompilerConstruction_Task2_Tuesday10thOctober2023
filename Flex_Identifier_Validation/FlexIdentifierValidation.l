%{
#include <iostream>
%}

%option noyywrap

%%

[a-zA-Z_][a-zA-Z0-9_]* {
    std::cout << "Valid identifier: " << yytext << std::endl;
}

. {
    std::cout << "Invalid character: " << yytext << std::endl;
}

%%

int main() {
    yylex();
    return 0;
}
