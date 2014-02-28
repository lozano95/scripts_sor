#!/bin/bash 
usuario=$1
busqueda=$(cat /etc/shadow | grep -P "$usuario:" | cut -d ":" -f2 | cut -d "$" -f2)
mensaje="El algoritmo usado en el hash es:"
if [ "$busqueda" == "" ]; then 
	echo "El usuario no existe"
else
	if [ "$busqueda" == "1" ]; then
		resultado="MD-5"
	else   
		if [ "$busqueda" == "5" ]; then
			resultado="SMA-256"
		else 
			if [ "$busqueda" == "6" ]; then 
				resultado="SMA-512"
			else
				resultado es igual a desconocido  
 			fi 
		fi
	fi
	echo $mensaje $resultado
fi
