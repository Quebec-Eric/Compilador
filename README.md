# Compilador
Compilador_Cool
inicio

flex -o lexer.cpp lexer.l
 g++ lexer.cpp -o exec
 ./exec <input.txt
