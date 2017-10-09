#!/bin/bash
#-p prompt.
read -p 'Username:' user
#-s entrada silenciosa.
read -sp 'Password:' pass

echo
echo usuario: $user contraseña: $pass

#las entradas son divididas por los espacios en blanco en cada una 
#de las variables.

#si hay mas entradas que variables, las entradas sobrantes se almacenan
#en la ultima variable.
#si hay mas variables que entradas, las variables restantes quedan null.
read -p 'marcas de carros:' car1 car2 car3
printf "carro 1: $car1 \ncarro 2: $car2 \ncarro 3: $car3\n"
