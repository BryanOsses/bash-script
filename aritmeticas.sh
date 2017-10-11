#!/bin/bash

#pueden haber espacios en la expresión
a=$(( 4 + 5 ))
echo $a

b=$((3+5))
echo $b
#las variables pueden ser agregadas con o sin $
c=$((a + $b))
echo $c

((a++))
echo $a
#el valor de la variable es incrimentado por 1 igual que utilizando let
(( b+=3 ))
echo $b
#podemos realizar multiplicacion sin \
d=$((4*5))
echo $d
