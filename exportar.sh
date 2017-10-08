#!/bin/bash

#demostrar el scope de variable1

variable1=kuki
variable2=sultan

#verificar el valor actual
echo $0 :: varriable1 : $variable1, variable2 : $variable2

#cuando se exporta una variable le decimos a Bash que cada vez que un
#proceso nuevo es creado entonces cree una copia de la variable y pasela
#al otro proceso.
export variable1
./script-export.sh

#veamos ahora como estan
echo $0 :: varriable1 : $variable1, variable2 : $variable2
