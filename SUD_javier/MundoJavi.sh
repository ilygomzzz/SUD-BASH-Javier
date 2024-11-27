#!/bin/bash

clear

if which caca-config > /dev/null

then

	pepe=pepe
	
else

	sudo apt install caca-utils
	
fi

if which mpg321 > /dev/null

then

	pepe=espepe
	
else

	sudo apt install mpg321
	
fi

source comandos.sh

# Vamos a comprobar que la base de datos existe y tiene datos

if [ -e MundoJavier.db ]; then

	comp=$(sqlite3 MundoJavier.db "SELECT * FROM zona")
	
	if [[ ! -n $comp ]]; then
	
		./baseMundoJavier.sh
	fi
	
else

	./baseMundoJavier.sh
	
fi



#sleep 2
	
## Funcion para mostrar texto entrada

entrada

#sleep 1

## Funcion para mostrar texto empezar y debajo salir.

empezar

#sleep 1

salir

## Preguntamos que quiere hacer el jugador, si jugar o abandonar

select jugar in "Empezar" "Salir"
do
	
	break

done

case $jugar in

	"Empezar")
		
		echo ""
		read -p "Buenas, con que nombre quiere jugar el dia de hoy : " NOMBRE
		clear
		
	;;
	
	"Salir")
	
		echo "Tenga un buen dia."
		sleep 1
		exit 0
		
	;;
	
esac

pv_total=$(sqlite3 MundoJavier.db 'SELECT pv FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')

if [ $pv_total -le 0 2> /dev/null ]; then

		echo "Te has quedado a 0 de vida, tu partida ha terminado."
		sqlite3 MundoJavier.db 'UPDATE jugador SET pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
		exit 0
		
fi

existe=$(sqlite3 MundoJavier.db 'SELECT nombrePersonaje FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')

if [[ ! -n $existe ]]; then

	partida
	asci_art_tipo
	stats_objetos
	stats_inicio
	
else

	asci_art_tipo
	stats_objetos
	stats_actuales
	
fi

while [ ! "$loc_actual" = "FIN" ]; do

	loc_actual=$(sqlite3 MundoJavier.db 'SELECT codLocal from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')

	if [ $pv_total -le 0 ]; then

		echo "Te has quedado a 0 de vida, tu partida ha terminado."
		sqlite3 MundoJavier.db 'UPDATE jugador SET pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
		exit 0
		
	else
	
		donde_estas
		musica 
		enemigos
		pelea
		usar_objeto
		movimiento
		clear
			
	fi
done

exit 0

