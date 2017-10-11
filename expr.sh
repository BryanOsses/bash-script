#!/bin/bash

#pueden existir espacios sin la necesidad de utilizar " "
expr 5 + 4
#si colocamos " " la expresión no va a ser evaluada sino imprimida 
expr "5 + 4"
#si no colocamos espacio la expresión no va a ser evaluada sino imprimida
expr 5+4

expr 5 \* $1
# % modulo
expr 11 % 2

#para almacenar el valor de expr en una variable se utiliza "command substitution"
a=$(expr 10 - 3)
echo $a
