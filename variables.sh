#!/bin/bash

cp $1 $2

#una vez que la copia haya finalizado ejecuta el comando ls para verificar
#que a funcionado.
echo Detalles de $2
ls -lh $2
echo cantidad de argumentos pasados al script: $#
echo parametros pasados: $@


#definir variables
variable=/etc
#referir variables 
echo $variable
ls $variable 

#cuando son mas de una sola palabra tenemos que utilizar comillas
#comillas simples '' <- caracteres literales
mensaje='Hola Mundo $variable'
echo $mensaje
#comillas dobles "" <- permite substitución
mensaje="Hola Mundo $variable"
echo $mensaje

#substitucion de comandos
myvar=$(ls /etc | wc -l)
echo "cantidad de ficheros en $variable: $myvar"

#si la salida son multiples lineas entonces toda la salida se da en
#una sola linea.
home=$(ls /home/akira)

echo "ficheros en /home/akira: $home"



