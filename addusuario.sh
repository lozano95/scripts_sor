#!/bin/bash
if [ "$1" == "" ]; then
	echo "debes escribir un usuario"
else	

	
	echo Añadiendo el usuario "$1"
	echo Añadiendo el nuevo grupo "$1"
	echo Añadiendo el nuevo usuario "$1" con grupo "$1"
	usseradd $1
	echo creando el directorio personal "/home/$1"
	mkdir /home/$1
	chown $1:$1 /home/$1
	echo copiando los ficheros desde "/etc/skel"
 	cp /etc/skel home/$1
	passwd $1
	echo -n "Full name[]:"
	read
	echo -n "Phone number[]:"
	read
	echo -n "Room number[]:"
	read
	echo -n "Email[]:"
	read
	echo -n "¿Es correcta la informacion? [s/n]" 
	read $respuesta 
	if [ "$respuesta" == "n" ]; then
		userdel $1
		rm -r /home/$1
		if [ "$respuesta" == "s" ]; then
		else
			echo "respuesta incorrecta"
		fi
	fi
	
fi
