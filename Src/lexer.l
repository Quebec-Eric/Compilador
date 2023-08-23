%option noyywrap

%{
    #include <iostream>
%}


DIGITO        [0-9]
LETRA         [a-zA-Z]

%%

"if"           { std::cout << "Tem um If\n"; }
"while"        { std::cout << "Tem um While\n"; }
{LETRA}({LETRA}|{DIGITO})* { std::cout << "identificador\n"; }
{DIGITO}+      { std::cout << "Número\n"; }
"+"            { std::cout << "adicao\n"; }
"-"            { std::cout << "subtração \n"; }


%%

int main() {
    yylex();
    return 0;
}
