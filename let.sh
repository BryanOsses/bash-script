#!/bin/bash

#este es el formato basico, no colocamos " " en la expresión, no deben existir espacios
let a=5+4
echo a=5+4: $a

#el utilizar " " nos permite tener espacios en la expresíon
let "a = 5 + 5"
echo a=5+5: $a

#incremento por 1 de la variable
let a++
echo a++: $a

let "a = 4 * 5"
echo a=4*5: $a

#30 + el primer argumento de la linea de comandos
let "a = $1 + 30"
echo a $-1+30: $a
