#!/bin/bash

#declarar funciones
function limpiarPantalla() {
	clear
}

function cantidadProcesos() {
	#wc Word Count / -l numero de lineas
	echo -e "cantidad de procesos corriendo actualmente:"	
	ps xa | wc -l
}

function suma() {
	expr 10 + 10
}

#los parametros recibidos por funciones son iguales que los parametros recibidos por el script
function recibeParametro() {
	echo "parametro recibido:" $1
}

#llamar funciones (En este caso no pasamos parametros)
limpiarPantalla	
cantidadProcesos
suma
#llamar funciones con parametros
recibeParametro kuki
