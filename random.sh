#!/bin/bash

maximo=0
echo Ingrese valor maximo
read maximo

variable=$(($RANDOM%$maximo))
echo  valor $variable 
echo $RANDOM
