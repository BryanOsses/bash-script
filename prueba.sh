#!/bin/bash

magenta='\033[0;35m'
cyan='\033[0;36m'
green='\033[0;32m'
red='\033[0;31m'
noc='\033[0m'
yellow='\033[0;33m'

separador=""
fichero=""
echo Ingrese separador
read separador

if [ -z $separador ]
then
	separador=" "
	echo -e ${yellow}no ingreso separador, por defecto se agrego como separador ${magenta}\" \" ${noc}
fi

echo Ingrese fichero en el cual buscar
read fichero

if [ -z $fichero ]
then
	echo -e ${red}ERROR: el fichero a buscar no puede estar vacio
else
	if [ -f $fichero ]
	then
		clear
		palabras=$(cat $fichero | awk -F "$separador" '{for(i=1; i<=NF; i++) print $i "(palabra " i ")"}')
		cantidad=$(awk -F "$separador" '{print NF}' $fichero)

		echo -e Cantidad de palabras en ${cyan}$fichero ${noc}utilizando como separador ${magenta}$separador  
		echo -e ${green}$palabras ${noc}
		echo -e total de palabras en ${cyan}$fichero ${noc}utilizando como separador ${magenta}$separador ${green}$cantidad ${noc}
	else
		echo -e ${red}ERROR: el fichero ${cyan}$fichero ${red}No es un archivo o no es valido			
	fi
	
fi
