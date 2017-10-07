#!/bin/bash

#asignar el resultado de un comando a una variable
procesos=$(ps xa | wc -l)
archivos=$(ls | wc -w)
usuarioAkira=$(cat /etc/passwd | grep akira | awk -F ":" '{print $1}')
akiraID=$(cat /etc/passwd | grep akira | awk -F ":" '{print $3}')

echo 'cantidad de procesos corriendo:' $procesos
echo 'cantidad de ficheros en este directorio:' $archivos
echo "nombre usuario:" $usuarioAkira "usuario ID:" $akiraID	



