#!/bin/bash

#bash nos permite el pipe | o redirección a traves de unos archivos especiales.
#cada proceso tiene su propio juego de archivos STDIN, STDOUT y STDERR

#listar los archivos del directorio actual ls | ./piping.sh
echo archivos dentro del directorio 
pwd
echo ==========================================
cat /dev/stdin | cut -d '.' -f 1,2 | sort -t '.' -k 2 
