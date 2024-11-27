#!/bin/bash

## mira en el ascii ar generator para cambiar mis asciis

#set -x

rojo1="\e[91m"
rojo2="\e[0m"
amarillo1="\033[38;5;206m"
amarillo2="\033[0m"
azul1="\033[34m"
azul2="\033[0m"
monedas1="\033[93m"
monedas2="\033[0m"
verde1="\033[92m"
verde2="\033[0m"
reproduciendo="false"

ctrl_c_pulsado() {
   	
   	echo ""
   	echo "Se ha presionado Ctrl+C. Saliendo..."
	killall mpg321 2> /dev/null
	echo ""
	exit 0
}

ctrl_z_pulsado() {

	echo ""
	echo "Se ha presionado Ctrl+Z. Deteniendo..."
	killall mpg321 2> /dev/null
	echo ""
	exit 1
}

trap ctrl_c_pulsado SIGINT
trap ctrl_z_pulsado SIGTSTP


function entrada {
echo -e '
 __      __       .__                                  __                             _____________ ___________   
/  \    /  \ ____ |  |   ____  ____   _____   ____   _/  |_  ____     _____ ___.__.  /   _____/    |   \______ \  
\   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \  \   __\/  _ \   /     <   |  |  \_____  \|    |   /|    |  \ 
 \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/   |  | (  <_> ) |  Y Y  \___  |  /        \    |  / |    `   \
  \__/\  /  \___  >____/\___  >____/|__|_|  /\___  >  |__|  \____/  |__|_|  / ____| /_______  /______/ /_______  /
       \/       \/          \/            \/     \/                       \/\/              \/                 \/ 
                                                                                                                  
                                                                                                                  
                                                                                                                  
                                                                                                                  
                                                                                                                  
                                                                                                                  
              ____.           .__                 _________                                                       
             |    |____ ___  _|__| ___________   /   _____/ _______________________    ____   ____                
  ______     |    \__  \\  \/ /  |/ __ \_  __ \  \_____  \_/ __ \_  __ \_  __ \__  \  /    \ /  _ \               
 /_____/ /\__|    |/ __ \\   /|  \  ___/|  | \/  /        \  ___/|  | \/|  | \// __ \|   |  (  <_> )              
         \________(____  /\_/ |__|\___  >__|    /_______  /\___  >__|   |__|  (____  /___|  /\____/               
                       \/             \/                \/     \/                  \/     \/                      
'
}

function empezar {
echo -e '
  ######   ##   ##  #####    ######   ######     ##     ##### 
  ##       ### ###  ##  ##   ##           ##    ####    ##  ## 
  ##       #######  ##  ##   ##          ##    ##  ##   ##  ##
  ####     ## # ##  #####    ####       ##     ######   ##### 
  ##       ##   ##  ##       ##        ##      ##  ##   #### 
  ##       ##   ##  ##       ##       ##       ##  ##   ## ## 
  ######   ##   ##  ##       ######   ######   ##  ##   ##  ## 


'
}

function salir {
echo -e '
   ####      ##     ##        ####    ##### 
  ##  ##    ####    ##         ##     ##  ## 
  ##       ##  ##   ##         ##     ##  ## 
   ####    ######   ##         ##     ##### 
      ##   ##  ##   ##         ##     #### 
  ##  ##   ##  ##   ##         ##     ## ## 
   ####    ##  ##   ######    ####    ##  ## 
'
}

function mision {

echo -e ''$NOMBRE' entró en la taberna y el bullicio de los aventureros llenó sus oídos. Se sentó solo en una mesa, observando a la gente mientras disfrutaba de la música y las risas. Fue entonces cuando un enigmático individuo se le acercó con una sonrisa deslumbrante. Le ofreció una oportunidad emocionante: explorar unas mazmorras olvidadas.

La idea de la aventura despertó su curiosidad y su deseo de descubrir nuevos horizontes. Sin pensarlo dos veces, aceptó la propuesta. El enigmático individuo le entregó un mapa antiguo y le dio instrucciones detalladas sobre cómo llegar a las mazmorras ocultas. Le advirtió sobre los peligros mortales que acechaban en las profundidades, pero también sobre los inmensos tesoros que podían encontrarse allí.

Y aquí empieza la aventura del gran '$NOMBRE'

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢀⣀⣀⣀⠀⣶⣶⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⣶⣶⠀⣀⣀⣀⡀⠀
⠀⠘⠛⠛⠛⠀⣿⣿⠀⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠀⣿⣿⠀⠛⠛⠛⠃⠀
⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣤⣤⣤⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⣀⣀⣀⣿⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡿⠛⣛⠋⣠⣄⣉⣉⠙⣿⣿⣿⣿⣿⠿⠿⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡇⢸⣿⡿⣿⡿⠹⣿⠇⠛⠻⣿⣿⣿⣶⣦⠀⠀⠀⠀
⠀⠀⠀⠀⣀⣤⣭⣿⣿⣿⣿⠄⢠⣤⣈⣁⣤⡄⠠⣶⡀⢹⣿⣿⣿⣿⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⠀⣿⡇⢸⣿⣿⣿⣿⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⠀⣿⠀⣼⣿⣿⣉⠉⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠐⠛⠛⠛⠛⠛⠛⠂⣠⣴⣿⣿⣿⣿⣷⠀⠀⠀⠀
⠀⠀⠀⠀⠛⠛⠻⢿⣿⣿⣿⠘⠛⠛⠛⠛⠛⠛⠃⣿⣿⣿⡿⠟⠛⠛⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⠿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'

 }
 
function felicidades {
 
 echo -e '                               ,.        ,.      ,.
                                ||        ||      ||  ()
 ,--. ,-. ,.,-.  ,--.,.,-. ,-.  ||-.,.  ,.|| ,-.  ||-.,. ,-. ,.,-.  ,--.
//`- //-\\||/|| //-||||/` //-\\ ||- ||  ||||//-\\ ||- ||//-\\||/|| ((`- 
||   || |||| ||||  ||||   || || ||  || /|||||| || ||  |||| |||| ||  ``.
\\,-.\\-//|| || \\-||||   \\-|| ||  ||//||||\\-|| ||  ||\\-//|| || ,-.))
 `--  `-  `  `   `-,|`     `-^-``   `-  ` `  `-^-``   `  `-  `  `  `-- 
                  //           .--------.
              ,-.//          .: : :  :___`.
              `--          . !!:::::  \\_\ `.
                      : . /%O!!::::::::\\_\. \
                     [""]/%%O!!:::::::::  : . \
                     |  |%%OO!!::::::::::: : . |
                     |  |%%OO!!:::::::::::::  :|
                     |  |%%OO!!!::::::::::::: :|
            :       . --`.%%OO!!!:::::::::::: :|
          : .:     /`.__. \%%OO!!!::::::::::::/
         :    .   /        \%OO!!!!::::::::::/
        ,- `` -. ;          ;%%OO!!!!!!::::: 
        |`-..- | |   ,--.   |`%%%OO!!!!!!: 
        | .   :| |_. , `.`._|  `%%%OO!%% 
        | . :  | |--     `--|    `%%%%
        |`-..- | ||   | | | |     /__\`-.
        \::::::/ || |/| | |\|           /
---------`:::: --|._ ~**~ _.|----------( -----------------------
           )(    |  `-..-   |           \    ______
           )(    |          |,--.       ____/ /  /\\ ,-._.- 
        ,- )( -. |          |\` /   .- )___  :  |`.!,- ` /`-._
       (     `  )`-._    _.- |;,|    `-,    \_\__\`,- >-.,-._
        `-....-      ````    `--       `-._       `- `-._`-.  
        
  '
        
}
 
 
function asci_art_tipo {
 
 	tipo=$(sqlite3 MundoJavier.db 'SELECT tipo FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
 	
 	if [ "$tipo" = "Caballero" ]; then
 	
 	echo -e '
    ,` -.)
   ( _/-\\-._
  /,|`--._,-^|            ,
  \_| |`-._/||          , |
    |  `-, / |         /  /
    |     || |        /  /
     `r-._||/   __   /  /
 __,-<_     )`-/  `./  /
  \   `---   \ 	   /  /
    |           |./  /
    /           //  /
\_/ \         | /  /
 |    |   _,^- /  /
 |    , ``  (\/  /_
  \,.->._    \X-=/^
  (  /   `-._//^`
   `Y-.____(__}
    |     {__)
          ()	'	
				echo -e ""
				
	elif [ "$tipo" = "Enano" ]; then
	
		echo -e '
				
	          ___A___
                 /   |   \
                / __ | __ \
                |/ o\_/o \|
                (.--(_)--.)
            .===/.- \_/`-.\===.
          . \  /           \ / `.
        /___ |_\           /_|___\_
       <____> \ `.       ,  /`<____>
       /   /   >==`-._.- ==<  /   /
     _/===    /  ,---:---.  \/==, 
    / _ /     |__/v^v^v^v^v\__)  \
    \)|)      |V^V^V^V^V^V^V|\__/
     ||        \`-----|----- /
     ||         \--.__|__,--/
     ||          |____|____|
     ||         <_____X_____>
  /A || A\       \....|..../
 // \||/ \\       \   |   /
((   []   ))      / v | v \
 \\ /  \ //      /   ,^    \
  \V    V/       `--    `--  
				
			'
				
	elif [ "$tipo" = "Mago" ]; then
	
	echo -e '
				
			,---.
                       /    |
                      /     |
  	             /      |
                    /       |
               ___,         |
             <  -           :
              `-.__..-- ``-,_\_
                 |o/ ` :,.)_`>
                 :/ `     ||/)
                 (_.).__,-` |\
                 /( `.``   `| :
                 \ `-.)  `  ; ;
                 | `       /-<
                 |     `  /   `.
 ,-_-..____     /|  `    :__..- \
/, -.__\\  ``-./ :`      ;       \
`\ `\  `\\  \ :  (   `  /  ,   `. \
  \` \   \\   |  | `   :  :     .\ \
   \ `\_  ))  :  ;     |  |      ): :
  (`-.- \ ||  |\ \   ` ;  ;       | |
   \-_   `;;._   ( `  /  /_       | |
    `-.-.// , `-._\__/_,          ; |
       \:: :     /     `     ,   /  |
        || |    (        ,  /   /   |
        ||                ,    /    | 
        
        '
				
	fi
	
}

function partida {
	
	if [[ ! -n $existe ]]; then
	
		mision
		
		echo -e ""
		echo -e "Buenas $NOMBRE, veo que eres nuevo, por ello vamos a empezar con la eleccion de tipo. "
		echo -e "Has de escoger uno de estos tipos : "
		echo -e ""
		sleep 1
		
		echo -e "	Caballero : Personaje con resistencia y Fuerza equlibrada.
		 Nivel: 1																				
		$rojo1 Vida: 30$rojo2
		$amarillo1 Fuerza: 6 - 9$amarillo2
		 Prob. Esquive: 1/4
		 Objetos Iniciales: Armadura de Cuero, Espada de madera, Escudo de madera, Pocion de de Vida."
		sleep 0,5
		
		echo -e ""
		
		echo -e "	Enano : Persoanje de mucha fuerza y resistencia equilibrada.
		 Nivel: 1
		$rojo1 Vida: 25$rojo2
		$amarillo1 Fuerza: 7 - 10$amarillo2
		 Porb. Esquive: 1/3
		 Objetos Iniciales: Armadura de cuero, Hacha de Hierro, Pocion de Vida."
		sleep 0,5
				
		echo -e ""
		
		echo -e "	Mago : Personaje con poca vida y mucho daño, necesita tener maná para poder atacar.
		 Nivel: 1
		$rojo1 Vida: 15$rojo2
		$azul1 Mana Inicial: 200$azul2
		$amarillo1 Danyo magico: 10 - 13$amarillo2
		 Prob. Esquive: 1/2 
		 Objetos iniciales: Bara Magica, Tunica Magica, Pocion de mana"
		sleep 0,5

		
		select tipo in "Caballero" "Enano" "Mago"
		do
		
			break
			
		done
		
		proxidJugador=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador ORDER BY idJugador DESC LIMIT 1 ;')
		
		proxidJugador=$[$proxidJugador+1]
		
		## Introducimos el registro de que se ha creado el personaje coon el nombre que se le indica y a que hora y fecha ha sido
		
		sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$proxidJugador',"Se ha creado el personaje '$NOMBRE' del tipo '$tipo'",CURRENT_TIMESTAMP);'
		
		case $tipo in
		
			"Caballero")
					
				sqlite3 MundoJavier.db 'INSERT INTO "jugador" ("idJugador","nombrePersonaje","nivel","xp","pv","danyo_min","danyo_max","manoIzq","ManoDer","Cuerpo","bolso","tipo","enemigos_muertos","codLocal") VALUES ('$proxidJugador',"'$NOMBRE'",1,0,30,6,9,2,1,3,6,"Caballero",0,"BOSSEN01");'
				
				clear
	
			;;
				
			"Enano")
			
				sqlite3 MundoJavier.db 'INSERT INTO "jugador" ("idJugador","nombrePersonaje","nivel","xp","pv","danyo_min","danyo_max","manoIzq","ManoDer","Cuerpo","bolso","tipo","enemigos_muertos","codLocal") VALUES ('$proxidJugador',"'$NOMBRE'",1,0,25,7,10,0,8,3,6,"Enano",0,"BOSSEN01");'
				
				clear
				
			;;
			
			"Mago")
			
				sqlite3 MundoJavier.db 'INSERT INTO "jugador" ("idJugador","nombrePersonaje","nivel","xp","pv","mana","danyo_min","danyo_max","manoIzq","ManoDer","Cuerpo","bolso","tipo","enemigos_muertos","codLocal") VALUES ('$proxidJugador',"'$NOMBRE'",1,0,15,200,10,13,0,10,11,14,"Mago",0,"BOSSEN01");'
				
				clear
				
			;;
			
		esac
	
	fi
	
}

## Creamos funcion que coge los objetos que llevas equipqdos, coge sus stats, te las muestra y luego las inserta a tu personaje.

function stats_objetos {
	
	tipo=$(sqlite3 MundoJavier.db 'SELECT tipo from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	## Cogemos el IDBotin de cada objeto que llevamos.
	
	ManoDerecha=$(sqlite3 MundoJavier.db 'SELECT ManoDer FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	ManoIzquierda=$(sqlite3 MundoJavier.db 'SELECT ManoIzq FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	Torso=$(sqlite3 MundoJavier.db 'SELECT cuerpo FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	## Según sea el tipo hay que hacer una cosa o otra
	
	if [ $tipo = "Caballero" ] || [ $tipo = "Enano" ]; then
	
		## Cogemos los stats de cada objeto que tenemos
	
		ManoDerecha_pv=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE idBotin = "'$ManoDerecha'" ;')
		ManoDerecha_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo from botin WHERE idBotin = "'$ManoDerecha'" ;')
		ManoDerecha_nombre=$(sqlite3 MundoJavier.db 'SELECT nombre from botin WHERE idBotin = "'$ManoDerecha'" ;')
		
		ManoIzquierda_pv=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE idBotin = "'$ManoIzquierda'" ;')
		ManoIzquierda_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo from botin WHERE idBotin = "'$ManoIzquierda'" ;')
		ManoIzquierda_nombre=$(sqlite3 MundoJavier.db 'SELECT nombre from botin WHERE idBotin = "'$ManoIzquierda'" ;')
		
		Torso_pv=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE idBotin = "'$Torso'" ;')
		Torso_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo from botin WHERE idBotin = "'$Torso'" ;')
		Torso_nombre=$(sqlite3 MundoJavier.db 'SELECT nombre from botin WHERE idBotin = "'$Torso'" ;')
		
		## Según la cantidad que tenemos muestra uno de estos
		
		if [ ! $ManoDerecha -eq 0 ] && [ ! $ManoIzquierda -eq 0 ] && [ ! $Torso -eq 0 ]; then
	
			echo -e " Portas el siguiente equipamiento : "
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$Torso_nombre\e[0m :
			$rojo1 Vida extra : +$Torso_pv $rojo2"
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$ManoDerecha_nombre\e[0m :
			$rojo1 Vida extra : +$ManoDerecha_pv $rojo2
			$amarillo1 Daño extra : +$ManoDerecha_danyo $amarillo2"
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$ManoIzquierda_nombre\e[0m :
			$rojo1 Vida extra : +$ManoIzquierda_pv $rojo2
			$amarillo1 Daño extra : +$ManoIzquierda_danyo $amarillo2"
			echo -e ""
			
		elif [ $ManoIzquierda -eq 0 ]; then
		
			echo -e " Portas el siguiente equipamiento : "
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$Torso_nombre\e[0m :
			$rojo1 Vida extra : +$Torso_pv $rojo2"
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$ManoDerecha_nombre\e[0m :
			$rojo1 Vida extra : +$ManoDerecha_pv $rojo2
			$amarillo1 Daño extra : +$ManoDerecha_danyo $amarillo2"
			echo -e ""
			
			ManoIzquierda_pv=0
			ManoIzquierda_danyo=0
			
		elif [ $ManoDerecha -eq 0 ]; then
			
			echo -e " Portas el siguiente equipamiento : "
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$Torso_nombre\e[0m :
			$rojo1 Vida extra : +$Torso_pv $rojo2"
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$ManoIzquierda_nombre\e[0m :
			$rojo1 Vida extra : $ManoIzquierda_pv $rojo2
			$amarillo1 Daño extra : +$ManoIzquierda_danyo $amarillo2"
			echo -e ""
			
			ManoDerecha_pv=0
			ManoIDercha_danyo=0
			
		fi
	
	else
		## Lo mismo de antes pero esta vez para clase mago.
		
		ManoDerecha_pv=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE idBotin = "'$ManoDerecha'" ;')
		ManoDerecha_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo from botin WHERE idBotin = "'$ManoDerecha'" ;')
		ManoDerecha_nombre=$(sqlite3 MundoJavier.db 'SELECT nombre from botin WHERE idBotin = "'$ManoDerecha'" ;')
		ManoDerecha_mana=$(sqlite3 MundoJavier.db 'SELECT mana from botin WHERE idBotin = "'$ManoDerecha'" ;')
		
		ManoIzquierda_pv=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE idBotin = "'$ManoIzquierda'" ;')
		ManoIzquierda_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo from botin WHERE idBotin = "'$ManoIzquierda'" ;')
		ManoIzquierda_nombre=$(sqlite3 MundoJavier.db 'SELECT nombre from botin WHERE idBotin = "'$ManoIzquierda'" ;')
		ManoIzquierda_mana=$(sqlite3 MundoJavier.db 'SELECT mana from botin WHERE idBotin = "'$ManoIzquierda'" ;')
		
		Torso_pv=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE idBotin = "'$Torso'" ;')
		Torso_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo from botin WHERE idBotin = "'$Torso'" ;')
		Torso_nombre=$(sqlite3 MundoJavier.db 'SELECT nombre from botin WHERE idBotin = "'$Torso'" ;')
		Torso_mana=$(sqlite3 MundoJavier.db 'SELECT mana from botin WHERE idBotin = '"$Torso"' ;')
		
		if [ ! $ManoDerecha -eq 0 ] && [ ! $ManoIzquierda -eq 0 ] && [ ! $Torso -eq 0 ]; then
	
			echo -e " Portas el siguiente equipamiento : "
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$Torso_nombre\e[0m :
			$rojo1 Vida extra : +$Torso_pv $rojo2
			$azul1 Mana extra : +$Torso_mana $azul2
			$amarillo1 Daño Magico extra : $Torso_danyo $amarillo2"
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$ManoDerecha_nombre\e[0m :
			$rojo1 Vida extra : +$ManoDerecha_pv $rojo2
			$azul1 Mana extra : +$ManoDerecha_mana $azul2
			$amarillo1 Daño magico extra : +$ManoDerecha_danyo $amarillo2"
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$ManoIzquierda_nombre\e[0m :
			$rojo1 Vida extra : +$ManoIzquierda_pv $rojo2
			$azul1 Mana extra : +$ManoIzquierda_mana $azul2
			$amarillo1 Daño magico extra : +$ManoIzquierda_danyo $amarillo2"
			echo -e ""
			
		elif [ $ManoIzquierda -eq 0 ]; then
		
			echo -e " Portas el siguiente equipamiento : "
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$Torso_nombre\e[0m :
			$rojo1 Vida extra : +$Torso_pv $rojo2
			$azul1 Mana extra : +$Torso_mana $azul2
			$amarillo1 Daño Magico extra : +$Torso_danyo $amarillo2"
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$ManoDerecha_nombre\e[0m :
			$rojo1 Vida extra : +$ManoDerecha_pv $rojo2
			$azul1 Mana extra : +$ManoDerecha_mana $azul2
			$amarillo1 Daño magico extra : +$ManoDerecha_danyo $amarillo2"
			echo -e ""
			
			ManoIzquierda_pv=0
			ManoIzquierda_danyo=0

		elif [ $ManoDerecha -eq 0 ]; then
		
			echo -e " Portas el siguiente equipamiento : "
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$Torso_nombre\e[0m :
			$rojo1 Vida extra : +$Torso_pv $rojo2
			$azul1 Mana extra : +$Torso_mana $azul2
			$amarillo1 Daño Magico extra : +$Torso_danyo $amarillo2"
			echo -e ""
			echo -e " Estadisticas de \e[1;33m$ManoIzquierda_nombre\e[0m :
			$rojo1 Vida extra : +$ManoIzquierda_pv $rojo2
			$azul1 Mana extra : +$ManoIzquierda_mana $azul2
			$amarillo1 Daño magico extra : +$ManoIzquierda_danyo $amarillo2"
			echo -e ""
			
			ManoDerecha_pv=0
			ManoDerecha_danyo=0
			
		fi
		
	fi
	
}


function stats_inicio {
	
	tipo=$(sqlite3 MundoJavier.db 'SELECT tipo from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	## Cogemos las stats base del personaje
	
	personaje_pv=$(sqlite3 MundoJavier.db 'SELECT pv from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	personaje_danyo=$(sqlite3 MundoJavier.db 'SELECT danyo_max FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	personaje_mana=$(sqlite3 MundoJavier.db 'SELECT mana FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	## Juntamos las stats base con las stats de los objetos y juntas las introducimos.
	
	if [ $tipo = "Caballero" ] || [ $tipo = "Enano" ]; then
	
		pv_total=$[$personaje_pv+$Torso_pv+$ManoDerecha_pv+$ManoIzquierda_pv]
		danyo_total=$[$personaje_danyo+$Torso_danyo+$ManoDerecha_danyo+$ManoIzquierda_danyo]
	
		echo -e "Tus Stats actuales son estas : $rojo1$pv_total de vida$rojo2, $amarillo1$danyo_total de danyo $amarillo2"
		
		sqlite3 MundoJavier.db 'UPDATE jugador SET pv = "'$pv_total'" WHERE nombrePersonaje = "'$NOMBRE'" ;'
		sqlite3 MundoJavier.db 'UPDATE jugador SET danyo_max = "'$danyo_total'" WHERE nombrePersonaje = "'$NOMBRE'" ;'
		
	else
		
		pv_total=$[$personaje_pv+$ManoDerecha_pv+$ManoIzquierda_pv+$Torso_pv]
		danyo_total=$[$personaje_danyo+$ManoDerecha_danyo+$ManoIzquierda_danyo+$Torso_danyo]
		mana_total=$[$personaje_mana+$ManoDerecha_mana+$ManoIzquierda_Mana+$Torso_mana]
		
		echo -e "Tus Stats actuales son estas : $rojo1$pv_total de vida$rojo2, $amarillo1$danyo_total de danyo magico$amarillo2, $azul1$mana_total de mana $azul2"
		
		sqlite3 MundoJavier.db 'UPDATE jugador SET pv = "'$pv_total'" WHERE nombrePersonaje = "'$NOMBRE'" ;'
		sqlite3 MundoJavier.db 'UPDATE jugador SET danyo_max = "'$danyo_total'" WHERE nombrePersonaje = "'$NOMBRE'" ;'
		sqlite3 MundoJavier.db 'UPDATE jugador SET mana = "'$mana_total'" WHERE nombrePersonaje = "'$NOMBRE'" ;'
	
	
	fi
	
	echo -e ""
	
}

function stats_actuales {

	tipo=$(sqlite3 MundoJavier.db 'SELECT tipo from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	## Cogemos las stats base del personaje
	
	pv_total=$(sqlite3 MundoJavier.db 'SELECT pv from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	danyo_total=$(sqlite3 MundoJavier.db 'SELECT danyo_max FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	mana_total=$(sqlite3 MundoJavier.db 'SELECT mana FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	bichos_muertos=$(sqlite3 MundoJavier.db 'SELECT enemigos_muertos FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	## Juntamos las stats base con las stats de los objetos y juntas las introducimos.
	
	if [ $tipo = "Caballero" ] || [ $tipo = "Enano" ]; then
		
		echo -e "Tus Stats actuales son estas : $rojo1$pv_total de vida$rojo2, $amarillo1$danyo_total de danyo $amarillo2 y has matado $bichos_muertos enemigos"
		
	else
		
		echo -e "Tus Stats actuales son estas : $rojo1$pv_total de vida$rojo2, $amarillo1$danyo_total de danyo magico$amarillo2, $azul1$mana_total de mana $azul2 y has matado $bichos_muertos enemigos "
		
	fi
	
	echo -e ""
	
}
## Función objetos que puede tocarte al acabar una sala 

function objeto_aleatorio {
	
	if [ -e /tmp/mktemp.txt ]; then
	
		rm /tmp/mktemp.txt
	
	fi
	
	## Cogemos la lista de objetos y la introducimos en un archivo segun tu tipo.
	
	if [ $tipo = "Caballero" ]; then
	
		sqlite3 MundoJavier.db 'SELECT idBotin FROM botin WHERE ( tipo = "Fighter" OR tipo = "All" );' | while read linea ; do
	
			echo -e -n "$linea\n" >> /tmp/mktemp.txt
			
		done
		
	elif [ $tipo = "Enano" ]; then
	
		sqlite3 MundoJavier.db 'SELECT idBotin FROM botin WHERE ( tipo = "Fighter" OR tipo = "All" );' | while read linea ; do
	
			echo -e -n "$linea\n" >> /tmp/mktemp.txt
			
		done
			
	elif [ $tipo = "Mago" ]; then
	
		sqlite3 MundoJavier.db 'SELECT idBotin FROM botin WHERE ( tipo = "Mago" OR tipo = "All" ) ;' | while read linea ; do
			
			echo -e -n "$linea\n" >> /tmp/mktemp.txt
				
		done
		
	fi
	
	## Hacemos que coja un numero de la lista.
	
	cantidad_objetos=$(cat /tmp/mktemp.txt | wc -l)
	numero_random_objeto=$((RANDOM % $cantidad_objetos + 1))
	objeto_final=$(cat /tmp/mktemp.txt | sed -n $numero_random_objeto'p')
	
	## Bucle, si ya tienes el objeto lo vuelve a buscar y segun si tienes mano con algo o no
	
	if [ ! $ManoDerecha -eq 0 ] && [ ! $ManoIzquierda -eq 0 ] && [ ! $Torso -eq 0 ]; then
			
		while [ $ManoIzquierda = $objeto_final ] || [ $ManoDerecha = $objeto_final ] || [ $Torso = $objeto_final ]; do
	
			numero_random_objeto=$((RANDOM % $cantidad_objetos + 1))
			objeto_final=$(cat /tmp/mktemp.txt | sed -n $numero_random_objeto'p')
			
		done
		
	elif [ $ManoIzquierda -eq 0 ]; then
	
		while [ $ManoDerecha = $objeto_final ] || [ $Torso = $objeto_final ]; do
	
			numero_random_objeto=$((RANDOM % $cantidad_objetos + 1))
			objeto_final=$(cat /tmp/mktemp.txt | sed -n $numero_random_objeto'p')
			
		done
			
			
	elif [ $ManoDerecha -eq 0 ]; then
	
		while [ $ManoIzquierda = $objeto_final ] || [ $Torso = $objeto_final ]; do
	
			numero_random_objeto=$((RANDOM % $cantidad_objetos + 1))
			objeto_final=$(cat /tmp/mktemp.txt | sed -n $numero_random_objeto'p')
			
		done
		
	fi
	
	## Una vez el objeto no esta repetido ya podemos decir cual es
	
	objeto_final_base=$( sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_final' ;')
	
	echo -e $objeto_final_base


}


##### FUNCIONES DE LOCALIZACION

function donde_estas {

	sleep 1,5
	clear
	
	loc_actual=$( sqlite3 MundoJavier.db 'SELECT codLocal FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	zona_actual=$( sqlite3 MundoJavier.db 'SELECT zona.codZona FROM zona JOIN localizacion ON zona.codZona = localizacion.codZona WHERE localizacion.codLocal = "'$loc_actual'" LIMIT 1 ;')
	
	loc_descripcion=$( sqlite3 MundoJavier.db 'SELECT descripcion FROM localizacion WHERE codLocal = "'$loc_actual'" ;')
	zona_descripcion=$( sqlite3 MundoJavier.db 'SELECT descripcion FROM zona WHERE codZona = "'$zona_actual'" ;')
	
	zona_nombre=$( sqlite3 MundoJavier.db 'SELECT nombre FROM zona WHERE codZona = "'$zona_actual'" ;')
	
	idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	if [ "$zona_actual" = "BOSSEN" ]; then
		
		img2txt -f utf8 bosque.png
		
sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' ha entrado en el bosque Saria",CURRENT_TIMESTAMP);'
		
		## Introduce que ha entrado en esta sala
		
	elif [ "$zona_actual" = "TIENDA" ]; then
	
		img2txt -f utf8 tienda.png
		
		sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' ha entrado en la tienda del Mago Oz ",CURRENT_TIMESTAMP);'
		
	elif [ "$zona_actual" = "CUESEN" ]; then
	
		img2txt -f utf8 cueva.png
		
		sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' ha entrado en las cuevas",CURRENT_TIMESTAMP);'
		
	fi
	
	echo -e ""
	
	echo -e "$NOMBRE te encuentras en $zona_nombre, $zona_descripcion "
	echo -e ""
	
	echo -e "Tu localizacion dentro de $zona_nombre es $loc_actual, $loc_descripcion "

}

## Hacer la funcion de movimiento que dependa de si en la sala hay 0 enemigos por ello vamos a hacer primero la funcion de enemigos.

## En la funcion enemigos vamos a hacer un random con un max de 3 enemigos, luego escogera según el número de enemigos haremos un random de id's y que te toque lo que toque
## Acto seguido el enemigo tendrá sus ataques dentro de la funcion pelea, y ademas RECUERDA JAVI HAS DE DECIR CUANTAS MONEDAS CUESTA CADA COSA EN SU TABLA Y CUANTAS SUELTAN LOS ENEMIGOS.
## PARA LA TIENDA DEBERAS DE HACER LO MISMO QUE CON OBJETOS ALEATORIOS Y STATS DE LOS OBJETOS.

function tienda {

	echo -e "Buenas $NOMBRE, has llegado a la tienda del Mago 'Oz, puedes decidir si comprar algo o no..."
	echo ""
	echo "Entras en la tienda y encuentras los siguientes objetos :"
	echo ""
	
	: > /tmp/objetos_tienda.txt
	
	if [ $tipo = Mago ]; then
	
		sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE tipo = "Mago" OR tipo = "All" ;' > /tmp/objetos_tienda.txt
		
	else
	
		sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE tipo = "Fighter" OR tipo = "All" ;' > /tmp/objetos_tienda.txt
		
	fi
	
	cat /tmp/objetos_tienda.txt | while read objetos_tienda ; do
	
		((p++))
		
		cuanto_cuesta=$(sqlite3 MundoJavier.db 'SELECT coste FROM botin WHERE nombre = "'$objetos_tienda'" ;')
		monedas_jugador=$(sqlite3 MundoJavier.db 'SELECT monedas FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		monedas_restantes=$[$monedas_jugador-$cuanto_cuesta]
		
		if [ $monedas_restantes -lt 0 ]; then
			
			echo -e "$p) $rojo1$objetos_tienda$rojo2"
			
		else
		
			echo -e "$p) $verde1$objetos_tienda$verde2"
			
		fi
		
	done
	
	echo ""
	echo "Quieres comprar algo ? "
	echo ""
	
	select compra in "Si" "No"
	do
		break
	done
	
	case $compra in
	
		"Si")
		
			read -p "Cual objeto deseas comprar ? " objeto_compra
			echo ""
			objeto_que_quieres=$(cat /tmp/objetos_tienda.txt | sed -n $objeto_compra'p')
			cuanto_cuesta=$(sqlite3 MundoJavier.db 'SELECT coste FROM botin WHERE nombre = "'$objeto_que_quieres'" ;')
			monedas_jugador=$(sqlite3 MundoJavier.db 'SELECT monedas FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
			monedas_restantes=$[$monedas_jugador-$cuanto_cuesta]
			que_es=$(sqlite3 MundoJavier.db 'SELECT idBotin FROM botin WHERE nombre = "'$objeto_que_quieres'" ;')
			
			if [ $monedas_restantes -lt 0 ]; then
			
				echo ""
				echo "No tienes las suficientes monedas... Pero lo puedes intentar robar"
				echo ""
				select robar in "Robar" "No"
				do
					break
				done
				echo ""
				
			else
			
				echo -e "El objeto $objeto_que_quieres cuesta : $monedas1$cuanto_cuesta$monedas2"
				echo "Y te ofrece las siguientes Stats :"
				echo ""
			
				pv_objeto_compra=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE nombre = "'$objeto_que_quieres'" ;')
				danyo_objeto_compra=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo FROM botin WHERE nombre = "'$objeto_que_quieres'" ;')
				mana_objeto_compra=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin WHERE nombre = "'$objeto_que_quieres'" ;')
			
				echo -e "$rojo1 Vida extra : $pv_objeto_compra$rojo2"
				echo -e "$amarillo1 Daño extra : $danyo_objeto_compra$amarillo2"
			
				if [ "$tipo" = "Mago" ]; then
			
					echo -e "$azul1 Mana extra : $mana_objeto_compra$azul2"
				
				fi
			
				echo ""
				echo -e "Tu tienes $monedas1 $monedas_jugador monedas $monedas2"
				echo ""
			
				select robar in "Comprar" "Robar" "No"
				do
					break
				
				done
			fi
			
			case $robar in
				
				"Comprar")
				
					echo ""
					echo "Has comprado el objeto : $objeto_que_quieres"
					echo -e "Te quedas con $monedas1$monedas_restantes$monedas2"
					comprado="Si"
					echo ""
					sqlite3 MundoJavier.db 'UPDATE jugador set monedas = '$monedas_restantes' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
				;;
				
				"Robar")
					
					echo ""
					echo "Has decidido que lo vas a intenar robar, tienes 1/4 posibilidades de poder robarlo... si no lo consigues moriras a manos del Mago Oz..."
					echo ""
					echo "Estas seguto de querer robarlo ? "
					echo""
					select decision_robo in "Si" "No"
					do
						break
					done
					echo ""
					case $decision_robo in 
					
						"Si")
						
							que_pasara=$((RANDOM % 4 + 1))
							
							if [ ! $que_pasara = 1 ]; then
							
								danyo_mago_Oz=999999999
								vida_mago_Oz=99999999
								
								echo ""
								echo "El Mago de Oz te ha pillado robando... te toca pelear contra el..."
								echo ""
								echo -e "El Mago de Oz tiene :"
								echo -e "$rojo1 $danyo_mago_Oz de vida $rojo2"
								echo -e "$amarillo1 $danyo_mago_Oz de daño $amarillo2"
								echo ""
								echo "Como has intentado robarle tiene prioridad de ataque..."
								sqlite3 MundoJavier.db 'UPDATE jugador SET pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
								echo "El Mago te ha fulminado como nunca lo imaginabas y ademas vas a ser parte de sus proximas pocimas..."
								echo "Disfruta siendo una Pocion de vida por el resto de tu vida..."
								comprado="No"
								exit 0
								
							else
							
								echo "Has conseguido robar el objeto... Has tenido mucha suerte"
								comprado="Si"
								
							fi
							
						;;
					
						"No")
				
							comprado="No"
						
						;;
						
					esac
						
					;;
						
					"No")
				
					comprado="No"
					
					;;
					
					esac
					
				;;
				
				"No")
				
					comprado="No"
					
				;;
				
			esac
				
				if [ $comprado = "Si" ]; then
					
					tipo_cuerpo_compra=$(sqlite3 MundoJavier.db 'SELECT tipo_cuerpo FROM botin WHERE nombre = "'$objeto_que_quieres'" ;')
					id_compra=$(sqlite3 MundoJavier.db 'SELECT idBotin FROM botin WHERE nombre = "'$objeto_que_quieres'" ;')
						
					objeto_mano_derecha=$(sqlite3 MundoJavier.db 'SELECT manoDer FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					nombre_mano_derecha=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_mano_derecha' ;')
		
					objeto_mano_izquierda=$(sqlite3 MundoJavier.db 'SELECT manoIzq FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					nombre_mano_izquierda=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_mano_izquierda' ;')
		
					objeto_torso=$(sqlite3 MundoJavier.db 'SELECT cuerpo FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					nombre_torso=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_torso' ;')
					
					objeto_bolso=$(sqlite3 MundoJavier.db 'SELECT bolso FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					nombre_bolso=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_bolso' ;')
						
					if [ "$objeto_que_quieres" = "Pocion_vida" ] || [ "$objeto_que_quieres" = "Pocion_mana" ]; then
					
						if [ "$nombre_bolso" = "Pocion_vida" ] || [ "$nombre_bolso" = "Pocion_mana" ]; then
						
							echo ""
							echo "Ya portas una $nombre_bolso ... puedes decidir cual te bebes"
							echo ""
							echo -e "Tus stats son estos : "
							echo -e ""
							stats_actuales
									
							select decision_pocima in "La que porto" "Nueva"
							do
								break
							done
							echo ""
							case $decision_pocima in
									
								"La que porto")
									
									vida_que_da=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin where nombre = "Pocion_vida" ;')
									mana_que_da=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin where nombre = "Pocion_mana" ;')
									echo ""
									echo -e ""
									echo -e "Has decidido beberte la que portas encima, ahora en el bolso portas $objeto_que_quieres. "
										
									if [ "$nombre_bolso" = "Pocion_vida" ]; then
										
										pv_total=$[$pv_total+$vida_que_da]
										sqlite3 MundoJavier.db 'UPDATE jugador SET pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
											
									elif [ "$nombre_bolso" = "Pocion_mana" ]; then
										
										mana_total=$[$mana_total+$mana_que_da]
										sqlite3 MundoJavier.db 'UPDATE jugador SET mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
											
									fi
										

									sqlite3 MundoJavier.db 'UPDATE jugador SET bolso = '$id_compra' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									stats_actuales
										
								;;
								
								"Nueva")
								
									echo "Te bebes la pocima $obj_aleatorio "
									echo "Tus stats ahora quedan asi : "
									echo ""
										
									if [ "$objeto_que_quieres" = "Pocion_vida" ]; then
										
										pv_total=$[$pv_total+$pv_objeto_compra]
										sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total'  WHERE nombrePersonaje = "'$NOMBRE'" ;'
											
									elif [ "$objeto_que_quieres" = "Pocion_mana" ]; then
										
										mana_total=$[$mana_total+$mana_objeto_compra]
										sqlite3 MundoJavier.db 'UPDATE jugador SET mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
											
									fi
										
										stats_actuales

									
								;;	
									
							esac						
						
						else
							
							sqlite3 MundoJavier.db 'UPDATE jugador SET bolso = '$id_compra' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							
						fi
						
					else
					
					
						if [ $tipo_cuerpo_compra = "Mano" ]; then
					
							echo ""
							echo -e "Has de escoger en que mano quieres equiparlo : "
							echo -e ""
							echo -e "En la mano derecha portas : $verde1$nombre_mano_derecha$verde2"
							echo ""
							echo -e "En la mano izquierda portas : $verde1$nombre_mano_izquierda$verde2"
							echo ""		
							select cambio in "Mano Derecha" "Mano Izquierda" "No"
							do
								break
							done
						
							case $cambio in
						
								"Mano Derecha")
								
									mano_derecha_pv=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin WHERE idBotin = '$objeto_mano_derecha' ;')
									mano_derecha_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo FROM botin WHERE idBotin = '$objeto_mano_derecha' ;')
									mano_derecha_mana=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin WHERE nombre = '$objeto_mano_derecha' ;')
									
									if [ "$tipo" = "Mago" ]; then
									
										mana_total=$[$mana_total-$mano_derecha_mana]
										mana_total=$[$mana_total+$mana_objeto_compra]
										
									fi
									
									if [ ! $objeto_mano_derecha = 0 ]; then
									
										pv_total=$[$pv_total-$mano_derecha_pv]
										danyo_max=$[$danyo_max-$mano_derecha_danyo]
										
									fi
										
									pv_total=$[$pv_total+$pv_objeto_compra]
									danyo_max=$[$danyo_max+$danyo_objeto_compra]
									sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set danyo_max = '$danyo_max' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set manoDer = '$que_es' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									
								;;
								
								"Mano Izquierda")
								
									mano_izquierda_pv=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin WHERE idBotin = '$objeto_mano_izquierda' ;')
									mano_izquierda_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo FROM botin WHERE idBotin = '$objeto_mano_izquierda' ;')
									mano_izquierda_mana=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin WHERE idBotin = '$objeto_mano_izquierda' ;')
										
									if [ ! $objeto_mano_izquierda = 0 ]; then
										
										pv_total=$[$pv_total-$mano_izquierda_pv]
										danyo_max=$[$danyo_max-$mano_izquierda_danyo]
											
									fi
										
									if [ "$tipo" = "Mago" ]; then
										
										mana_total=$[$mana_total-$mano_izquierda_mana]
										mana_total=$[$mana_total+$mana_objeto_compra]
										sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
											
									fi
										
									pv_total=$[$pv_total+$pv_objeto_compra]
									danyo_max=$[$danyo_max+$danyo_objeto_compra]
										
									sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set danyo_max = '$danyo_max' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set manoIzq = '$que_es' WHERE nombrePersonaje = "'$NOMBRE'" ;'	

								;;
									
								"No")
									
									echo "No se realiza ningun cambio pues."
										
								;;
									
							esac
							
						elif [ $parte_cuerpo = "Torso" ]; then
						
							echo ""
							echo -e "En el torso portas : $verde1$nombre_torso$verde2"
							echo -e ""
							echo -e "Esta seguro de querer cambiarlo ?"
							select cambio in "Si" "No"
							do
								break
							done
							echo ""
							case $cambio in
							
							"Si")
								
								torso_pv=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin WHERE idBotin = '$objeto_torso' ;')
								torso_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo FROM botin WHERE idBotin = '$objeto_torso' ;')
								torso_mana=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin WHERE idBotin = '$objeto_torso' ;')
								pv_total=$[$pv_total-$torso_pv]
								danyo_max=$[$danyo_max-$torso_danyo]
									
								if [ "$tipo" = "Mago" ]; then
										
									mana_total=$[$mana_total-$torso_mana]
									mana_total=$[$mana_total+$mana_objeto_compra]
										
									sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								
								fi
										
								pv_total=$[$pv_total+$pv_objeto_compra]
								danyo_max=$[$danyo_max+$danyo_objeto_compra]
								sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								sqlite3 MundoJavier.db 'UPDATE jugador set danyo_max = '$danyo_max' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								sqlite3 MundoJavier.db 'UPDATE jugador set cuerpo = '$que_es' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							
							;;
								
							"No")
							
								comprado="No"
									
							;;
								
							esac
						
						fi
					
					fi
					
				fi

}

function FINAL {

	: > /tmp/german.txt
	: > /tmp/german_final.txt
	
	sqlite3 MundoJavier.db 'SELECT nombre FROM enemigo WHERE codZona = "FINAL" ;' > /tmp/german.txt
	
	cat /tmp/german.txt | while read linea; do
	
		((o++))
		echo $o=$linea=50 >> /tmp/german_final.txt
		
	done
	
	danyo_min=$(sqlite3 MundoJavier.db 'SELECT danyo_min FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	danyo_max=$(sqlite3 MundoJavier.db 'SELECT danyo_max FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	pv_total=$(sqlite3 MundoJavier.db 'SELECT pv FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	mana_total=$(sqlite3 MundoJavier.db 'SELECT mana FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' ha entrado en la pelea final..",CURRENT_TIMESTAMP);'
	
	echo "$NOMBRE... Has conseguido llegar al final... Aquí tu viaje se termina... Pero..."
	echo ""
	echo "Hay algo que se interpone en tu camino..."
	echo "Es algo que nunca te podrias esperar..."
	echo ""
	echo "Empizas a escuchar ciertos ruidos como de grua o carretilla de fondo..."
	echo "La luz se desvanece... Y de repente... APARECE GERMAN CARRETILLERO VUAMOOOOOOSSSSS."
	echo "Tienes que pelear contra el para poder pasar a la gloria eterna."
	echo "Que comienze la velada del Año"
	echo ""
	echo ' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣤⡤⠤⠤⠤⠤⠤⠤⢤⣤⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⠀⠀⠀⠀⠀⠀⣿⠀⣶⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣿⠀⣿⣿⣦⠀⠀⠀⠀⠀⢻⣇⠀⠀⠀⠀⠀⣉⣀⣉⠀⠀⠀⠀⠀⠀
⠀⢠⣤⣤⣬⣤⣌⠙⢿⡆⠀⠀⠀⢀⣈⣿⡄⠀⠀⠀⠀⣨⠉⣅⠀⠀⠀⠀⠀⠀
⠀⢸⡿⠟⠛⠛⠿⣷⣄⠑⢠⣴⣶⠟⠛⠛⠓⠀⠀⠀⠀⣿⠀⣿⠀⠀⠀⠀⠀⠀
⠀⠈⣠⣾⣿⣷⣦⡈⢻⣷⣤⣤⣤⣴⡿⠟⠛⠛⠳⣄⠀⣿⠀⠛⠛⠛⠛⠛⠂⠀
⠀⢰⣿⡇⠀⠈⣿⣷⠀⣿⣿⣿⣿⡟⢀⣴⠿⢿⣦⠈⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⢿⣷⣶⣶⡿⠋⠀⠀⠀⠀⠀⠀⠘⢿⣤⣴⡿⠀⠀⠿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

	'
	
	cantidad_enemigos=2
	
	while [ ! $cantidad_enemigos = 0 ]; do
		
		echo ""
		select jugada in "Atacar" "Curarse" 
		do
			break
		done
		echo ""
		case $jugada in
		
			"Atacar")
			
				cat /tmp/german_final.txt | grep -v "muerto" | cut -d "=" -f2 | while read final ; do
	
					m=$(cat /tmp/german_final.txt | grep $final | cut -d "=" -f1)
					echo -e "$m) $verde1$final$verde2"
		
				done
				
				echo ""
				
				if [ $tipo = "Mago" ]; then
					
					mana_actual=$(sqlite3 MundoJavier.db 'SELECT mana from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					echo -e ""
					mana_restante=$[$mana_actual-20]
					sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_restante' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
					if [ $mana_restante -lt 0 ]; then
						
						echo -e "No tienes mana, veamos si tienes pocimas..."
						objeto_bolso=$(sqlite3 MundoJavier.db 'SELECT bolso FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						sera_pocima_mana=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_bolso' ;')
						mana_que_da=$(sqlite3 MundoJavier.db 'SELECT mana from botin WHERE idBotin = '$objeto_bolso' ;')
						mana_total=$(sqlite3 MundoJavier.db 'SELECT mana FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						
						if [ "$sera_pocima_mana" = "Pocion_mana" ]; then
						
							echo -e "Portas una pocion de mana por ello mismo puedes restaurar $mana_que_da de mana"
							mana_total=$[$mana_total+$mana_que_da]
							sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							sqlite3 MundoJavier.db 'UPDATE jugador set bolso = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
							stats_actuales
							echo -e "Toca empezar la pelea."
							
						else
						
							echo -e "No portas mana... tu partida termina aqui"
							sqlite3 MundoJavier.db 'UPDATE jugador set pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
							idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
							sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' se ha quedado sin mana, esto causa su muerte",CURRENT_TIMESTAMP);'
							killall mpg321 2> /dev/null
							sleep 1
							killall MundoJavi.sh
							
						fi
						
					fi
				
					echo -e "Tu mana restante es $mana_restante"
					
				fi
				
				read -p "A quien de los dos atacas : " ataque
				quien_es=$(cat /tmp/german_final.txt | sed -n $ataque'p' | cut -d "=" -f2)
				vida_boss=$(cat /tmp/german_final.txt | sed -n $ataque'p' | cut -d "=" -f3)
				
				echo ""
				echo -e "Decides atacar a $quien_es, tiene $rojo1$vida_boss de vida$rojo2 "
				echo ""
				echo -e "Has de tirar del dado para saber cuanto daño vas a hacer, tus posibilidades son las siguientes : $danyo_min - $danyo_max"	
				echo -e "Veamos que te da el dado..."
				echo ""
							
				danyo_restado=$[$danyo_max-$danyo_min]
				dado_danyo=$((RANDOM % $danyo_restado + 1))
				dado_danyo_final=$[$danyo_min+$dado_danyo]
				vida_enemigo=$[$vida_boss-$dado_danyo_final] 
				
				echo -e "El dado te da $amarillo1$dado_danyo_final de daño$amarillo2"
				echo ""
				echo -e "$quien_es se queda con $rojo1$vida_enemigo de vida$rojo2"
				sed -i 's/'$quien_es=$vida_boss'/'$quien_es=$vida_enemigo'/g' /tmp/german_final.txt
				
				if [ $vida_enemigo -le 0 ]; then
				
					echo -e "El temido $quien_es a caido a manos de $NOMBRE."
					echo "Esto te otorga 3 niveles."
					echo ""
					echo -e "Subir 3 niveles de golpe te va a otorgar : "
					
					if [ "$tipo" = "Mago" ]; then
					
						echo -e "$rojo1+ 12 de Vida$rojo2, $amarillo1+ 9 de Daño$amarillo2, $azul1+140 de Mana$azul2"
						
						mana_total=$[$mana_total+140]
						sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
						
					else
					
						echo -e "$rojo1+ 12 de Vida$rojo2, $amarillo1+ 9 de Daño$amarillo2"
						
					fi
					
					sed -i 's/'$ataque=$quien_es'/0=muerto/g' /tmp/german_final.txt
					
					danyo_min=$[$danyo_min+4]
					danyo_max=$[$danyo_max+5]
					pv_total=$[$pv_total+12]
					
					sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					sqlite3 MundoJavier.db 'UPDATE jugador set danyo_min = '$danyo_min' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					sqlite3 MundoJavier.db 'UPDATE jugador set danyo_max = '$danyo_max' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
					cantidad_enemigos=$[$cantidad_enemigos-1]
					
					enemigos_muertos=$(sqlite3 MundoJavier.db 'SELECT enemigos_muertos FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					enemigos_muertos=$[$enemigos_muertos+1]
					
					sqlite3 MundoJavier.db 'UPDATE jugador set enemigos_muertos = '$enemigos_muertos' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
				else
					
					echo ""
					echo "Es turno de que $quien_es ataque... Sus probabilidades son de 10/15."
					echo -e "Podras esquivar el golpe?, veamoslo..."
					echo -e ""
					
					if [ $tipo = "Mago" ]; then
	
						ProbEsquive=$((RANDOM % 2+1))
				
					elif [ $tipo = "Caballero" ]; then
	
						ProbEsquive=$((RANDOM % 4+1))
	
					elif [ $tipo = "Enano" ]; then
	
						ProbEsquive=$((RANDOM % 3+1))
							
					fi
						
					if [ $ProbEsquive = 1 ]; then
					
						echo -e "$verde1 Has esquivado gratificantemente$verde2"
						echo ""
						
					else
					
						echo -e "$rojo1 No has esquivado, recibes daño$rojo2"
						echo -e ""
				
						dado_enemigo_medio=$((RANDOM % 5 + 1))
						dado_enemigo=$[$dado_enemigo_medio+10]
						
						echo -e "El enemigo ha sacado $amarillo1$dado_enemigo de daño$amarillo2."
						pv_total=$[$pv_total-$dado_enemigo]
						echo -e "Al quitarte $amarillo1$dado_enemigo$amarillo2 te quedas con $rojo1$pv_total de vida$rojo2"
						echo -e ""
						sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
					fi
					
					pv_total=$(sqlite3 MundoJavier.db 'SELECT pv FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					
					if [ $pv_total -le 0 ]; then
					
						echo -e "Te has quedado a $rojo1 0 de vida$rojo2, tu partida ha terminado."
						sqlite3 MundoJavier.db 'UPDATE jugador SET pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
						idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' se ha quedado sin vida",CURRENT_TIMESTAMP);'
						killall mpg321 2> /dev/null
						sleep 1
						killall MundoJavi.sh
						
					fi
					
				fi
					
			;;
				
			"Curarse")
			
				
				objeto_bolso=$(sqlite3 MundoJavier.db 'SELECT bolso FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
				sera_pocima=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_bolso' ;')
				vida_que_da=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE idBotin = '$objeto_bolso' ;')
				
				if [ "$sera_pocima" = "Pocion_vida" ]; then
				
					echo -e ""
					echo -e "Tienes la posibilidad de tomarte una pocion"
					echo -e "Esta te otorga $rojo1$vida_que_da de vida.$rojo2"
					echo ""
					select tomar in "Beber Pocion" "No Beber Pocion"
					do
						break
					done
					
					case $tomar in
					
						"Beber Pocion")
						
							echo -e ""
							echo -e "Has decidido bebertela. "
							pv_total=$[$pv_total+$vida_que_da]
							sqlite3 MundoJavier.db 'UPDATE jugador SET pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							sqlite3 MundoJavier.db 'UPDATE jugador SET bolso = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
							stats_actuales
							
						;;
							
						"No Beber Pocion")
						
							echo -e ""
							echo -e "Como no te la bebes te la puedes guardar para mas adelante."
							
						;;
						
					esac
					
				else
				
					echo -e ""
					echo -e "No tienes pocion"
					
				fi
					
				lineas_de_enemigos=$(cat /tmp/enemigos_final.txt | grep -v "muerto" |wc -l)
				enemigo_que_golpea_random=$((RANDOM % 1+$lineas_de_enemigos))
				que_enemigo_es=$(echo -e $enemigo_que_golpea_random | cut -d "=" -f2)
					
				echo -e "Toca el movimiento del enemigo"
				echo -e "Podras esquivar el golpe?, veamoslo..."
				echo -e ""
				
				if [ $tipo = "Mago" ]; then
	
					ProbEsquive=$((RANDOM % 2+1))
				
				elif [ $tipo = "Caballero" ]; then
	
					ProbEsquive=$((RANDOM % 4+1))
	
				elif [ $tipo = "Enano" ]; then
	
					ProbEsquive=$((RANDOM % 3+1))
							
				fi
						
				if [ $ProbEsquive = 1 ]; then
					
					echo -e "$verde1 Has esquivado gratificantemente$verde2"
						
				else
					
					echo -e "$rojo1 No has esquivado, recibes daño$rojo2"
					echo " Ademas, por pillarte curandote german y su carretilla se ponen tan furiosos que su daño asciende golpeando con critico"
					echo -e ""
				
					dado_enemigo_medio=$((RANDOM % 10 + 1))
					dado_enemigo=$[$dado_enemigo_medio+10]
					
					echo -e "El enemigo ha sacado $amarillo1$dado_enemigo de daño$amarillo2."
					pv_total=$[$pv_total-$dado_enemigo]
					echo -e "Al quitarte $amarillo1$dado_enemigo$amarillo2 te quedas con $rojo1$pv_total de vida$rojo2"
					echo -e ""
					sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
				fi
					
				if [ $pv_total -le 0 ]; then
					
					echo -e "Te has quedado a $rojo1 0 de vida$rojo2, tu partida ha terminado."
					sqlite3 MundoJavier.db 'UPDATE jugador SET pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
					idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' ha muerto",CURRENT_TIMESTAMP);'
					killall mpg321 2> /dev/null
					sleep 1
					killall MundoJavi.sh
						
				fi
				
		;;
						
		esac 
					
	done
		
}
	

function enemigos {

	if [ "$loc_actual" = "BOSSEN01" ]; then
	
		cantidad_enemigos=0
		
	elif [ "$loc_actual" = "BOSSEN02" ] || [ "$loc_actual" = "BOSSEN03" ]; then
	
		sqlite3 MundoJavier.db 'SELECT idEnemigo FROM enemigo WHERE codZona = "BOSSEN" ;' > /tmp/enemigos.txt
		
		cantidad_enemigos=$(cat /tmp/enemigos.txt | wc -l)
		
	elif [ "$zona_actual" = "TIENDA" ]; then
	
		tienda
	
	elif [ "$loc_actual" = "CUESEN01" ] || [ "$loc_actual" = "CUESEN02" ]; then
	
		sqlite3 MundoJavier.db 'SELECT idEnemigo FROM enemigo WHERE codZona = "CUESEN" ;' > /tmp/enemigos.txt
		
		cantidad_enemigos=$(cat /tmp/enemigos.txt | wc -l)
		
	elif [ "$loc_actual" = "FINAL" ]; then
	
		FINAL
		
	elif [ "$loc_actual" = "FIN" ]; then
	
		echo "Finalmente... jugador $NOMBRE LO CONSEGUISTE."
		echo "Has ganado el sud de Javier."
		echo ""
		echo "Tus stats al final han acabado asi : "
		echo ""
		stats_objetos
		echo ""
		stats_actuales
		echo ""
		felicidades
		sleep 3
		idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' ha terminado el sud",CURRENT_TIMESTAMP);'
	
		exit 0
		
	fi
	
	## Ahora vamos a hacer que aparezcan en aleatorio.
	
	if [[ ! $cantidad_enemigos = 0 ]]; then
		
		: > /tmp/enemigos_final.txt
		
		numero_random_enemigos=$((RANDOM % $cantidad_enemigos + 1))
		
		for i in $(seq 1 $numero_random_enemigos); do
		
			numero_random_enemigos2=$((RANDOM % $cantidad_enemigos + 1))
			enemigo_final=$(cat /tmp/enemigos.txt | sed -n $numero_random_enemigos2'p')
			nombre_enemigo=$(sqlite3 MundoJavier.db 'SELECT nombre FROM enemigo WHERE idEnemigo = '$enemigo_final' ;')
			vida_enemigo=$(sqlite3 MundoJavier.db 'SELECT pv FROM enemigo WHERE idEnemigo = "'$enemigo_final'" ;')
			echo -e enemigo$i=$nombre_enemigo=$vida_enemigo >> /tmp/enemigos_final.txt
			
		done
		
		source /tmp/enemigos_final.txt
		
		echo -e ""
		
	fi
	
}

function movimiento {

	if [ $cantidad_enemigos = 0 ]; then
	
		if [ $loc_actual = "BOSSEN01" ];then
		
			echo -e ""
			select movimientos in "avanzar" 
			do
			
				break
				
			done
			
		else
			
			echo -e ""
			select movimientos in "avanzar" "retroceder" 
			do
			
				break
				
			done
			
		fi
		
		case $movimientos in
		
			"avanzar")
			
				donde_avanzas=$(sqlite3 MundoJavier.db 'SELECT avanza FROM localizacion WHERE codLocal = "'$loc_actual'" ;')
				sqlite3 MundoJavier.db 'UPDATE jugador SET codLocal = "'$donde_avanzas'" where nombrePersonaje = "'$NOMBRE'" ;'
			
			;;
			
			"retroceder")
			
				donde_retrocedes=$(sqlite3 MundoJavier.db 'SELECT retrocede FROM localizacion WHERE codLocal = "'$loc_actual'" ;')
				sqlite3 MundoJavier.db 'UPDATE jugador SET codLocal = "'$donde_retrocedes'" where nombrePersonaje = "'$NOMBRE'" ;'
			
			;;
			
			esac
			
	fi

}

function pelea {

	echo -e ""
	
	if [ $tipo = "Mago" ]; then
				
		echo -e "Como eres Mago, cada ataque que hagas consumirá 20 de mana."
		echo -e ""
		
	fi

	while [ $cantidad_enemigos -gt 0 ] && [ $pv_total -gt 0 ]; do
	
		echo -e "Los enemigos vivos son : "
		echo -e ""
	
		cat /tmp/enemigos_final.txt | cut -d "=" -f1 | grep -v "muerto" | while read variable ; do

			l=$(echo -e $variable | cut -b8)
			yanoseniquellamarte=$(cat /tmp/enemigos_final.txt | grep $variable | cut -d "=" -f2)
			echo -e $l-$yanoseniquellamarte
			
		done
	
		echo -e ""
	
		select jugada in "atacar" "curarse"
		
		do
		
			break
			
		done
		echo ""
		
		danyo_min=$(sqlite3 MundoJavier.db 'SELECT danyo_min FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		danyo_max=$(sqlite3 MundoJavier.db 'SELECT danyo_max FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		pv_total=$(sqlite3 MundoJavier.db 'SELECT pv FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		
		case $jugada in
		
			"atacar")
				
				if [ $tipo = "Mago" ]; then
			
					mana_actual=$(sqlite3 MundoJavier.db 'SELECT mana from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					echo -e ""
					mana_restante=$[$mana_actual-20]
					sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_restante' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
					if [ $mana_actual -le 0 ]; then
						
						echo -e "No tienes mana, veamos si tienes pocimas..."
						objeto_bolso=$(sqlite3 MundoJavier.db 'SELECT bolso FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						sera_pocima_mana=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_bolso' ;')
						mana_que_da=$(sqlite3 MundoJavier.db 'SELECT mana from botin WHERE idBotin = '$objeto_bolso' ;')
						mana_total=$(sqlite3 MundoJavier.db 'SELECT mana FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						
						if [ "$sera_pocima_mana" = "Pocion_mana" ]; then
						
							echo -e "Portas una pocion de mana por ello mismo puedes restaurar $mana_que_da de mana"
							mana_total1=$[$mana_total+$mana_que_da]
							sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total1' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							sqlite3 MundoJavier.db 'UPDATE jugador set bolso = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
							stats_actuales
							echo -e "Toca empezar la pelea."
							
						else
						
							echo -e "No portas mana... tu partida termina aqui"
							sqlite3 MundoJavier.db 'UPDATE jugador set pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
							idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
							sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' se ha quedado sin mana, esto causa su muerte",CURRENT_TIMESTAMP);'
							killall mpg321 2> /dev/null
							sleep 1
							killall MundoJavi.sh
							
						fi
						
					fi
				
					echo -e "Tu mana restante es $mana_restante"

				fi		
				
				echo -e ""		
				read -p "A que enemigo atacas : " ATAQUE
				
				cat /tmp/enemigos_final.txt | cut -d "=" -f1 | grep "$ATAQUE" | while read linea ; do
				
					vida_enemigo_final=$(cat /tmp/enemigos_final.txt | grep $linea | cut -d "=" -f3)
					enemigo_que_atacas=$(cat /tmp/enemigos_final.txt | grep $linea | cut -d "=" -f2)
					linea_entera=$(cat /tmp/enemigos_final.txt | grep $linea)
					
					echo -e ""
					echo -e "El enemigo $enemigo_que_atacas tiene $rojo1$vida_enemigo_final de vida$rojo2"
					echo -e ""
					echo -e "Has de tirar del dado para saber cuanto daño vas a hacer, tus posibilidades son las siguientes : $danyo_min - $danyo_max"
				
					echo -e "Veamos que te da el dado..."
					
					danyo_restado=$[$danyo_max-$danyo_min]
					dado_danyo=$((RANDOM % $danyo_restado + 1))
					dado_danyo_final=$[$danyo_min+$dado_danyo]
					vida_enemigo=$[$vida_enemigo_final - $dado_danyo_final]
					
					echo -e $linea_entera > /dev/null | grep $linea | sed -i 's/'$linea=$enemigo_que_atacas=$vida_enemigo_final'/'$linea=$enemigo_que_atacas=$vida_enemigo'/g' /tmp/enemigos_final.txt 
				
					echo -e "El dado dice que harás $amarillo1$dado_danyo_final de daño$amarillo2".
					
					if [ $vida_enemigo -le 0 ]; then
					
						echo -e ""
						echo -e "El enemigo $enemigo_que_atacas a muerto."
						sed -i 's/'$linea'/muerto/g' /tmp/enemigos_final.txt
						
						enemigos_muertos=$(sqlite3 MundoJavier.db 'SELECT enemigos_muertos FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						enemigos_muertos=$[$enemigos_muertos+1]
						
						monedas_jugador=$(sqlite3 MundoJavier.db 'SELECT monedas FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						monedas_enemigo=$(sqlite3 MundoJavier.db 'SELECT monedas FROM enemigo WHERE nombre = "'$enemigo_que_atacas'" ;')
						monedas_que_tienes=$[$monedas_enemigo+$monedas_jugador]
						
						sqlite3 MundoJavier.db 'UPDATE jugador set monedas = '$monedas_que_tienes' WHERE nombrePersonaje = "'$NOMBRE'" ;'
						sqlite3 MundoJavier.db 'UPDATE jugador set enemigos_muertos = '$enemigos_muertos' WHERE nombrePersonaje = "'$NOMBRE'" ;'
						
						echo -e "Al morir te suelta $monedas1$monedas_enemigo monedas$monedas2"
						echo -e "Actualmente tienes $monedas1$monedas_que_tienes monedas$monedas2"
						echo -e ""
						
						lvl_que_eres=$(sqlite3 MundoJavier.db 'SELECT nivel FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						xp_que_tienes=$(sqlite3 MundoJavier.db 'SELECT xp FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						xp_final=$[$xp_que_tienes+5]
						
						sqlite3 MundoJavier.db 'UPDATE jugador set xp = '$xp_final' WHERE nombrePersonaje = "'$NOMBRE'" ;'
												
						echo -e "Asesinar a $enemigo_que_atacas te otorga 5 de xp."
						
						if [ $xp_final = 15 ]; then
						
							echo -e "Has alcanzado $azul1 15 de xp$azul2, subes de nivel, con esto tu daño hasciende en 3 y tu vida en 4"
							
							danyo_min=$[$danyo_min+1]
							danyo_max=$[$danyo_max+2]
							pv_total=$[$pv_total+4]
							lvl_final=$[$lvl_que_eres+1]
							
							sqlite3 MundoJavier.db 'UPDATE jugador set xp = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
							sqlite3 MundoJavier.db 'UPDATE jugador set danyo_min = '$danyo_min' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							sqlite3 MundoJavier.db 'UPDATE jugador set danyo_max = '$danyo_max' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							sqlite3 MundoJavier.db 'UPDATE jugador set nivel = '$lvl_final' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							
							stats_actuales
							
						else
						
							xp_que_tienes=$(sqlite3 MundoJavier.db 'SELECT xp FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
							xp_que_te_falta=$[15-$xp_que_tienes]
							echo -e "Para subir de nivel te faltan $azul1$xp_que_te_falta de xp$azul2"
							
						fi
						
						exit 1
						
					fi
					echo -e "Atacas al enemigo haciendole $amarillo1$dado_danyo de daño$amarillo2, le dejas a $rojo1$vida_enemigo de vida$rojo2"
					echo -e ""
					echo -e "Toca el movimiento del enemigo"
					echo -e "Podras esquivar el golpe?, veamoslo..."
					echo -e ""
					
					if [ $tipo = "Mago" ]; then
	
						ProbEsquive=$((RANDOM % 2+1))
				
					elif [ $tipo = "Caballero" ]; then
	
						ProbEsquive=$((RANDOM % 4+1))
	
					elif [ $tipo = "Enano" ]; then
	
							ProbEsquive=$((RANDOM % 3+1))
							
					fi
						
					if [ $ProbEsquive = 1 ]; then
					
						echo -e "$verde1 Has esquivado gratificantemente$verde2"
						
					else
					
						echo -e "$rojo1 No has esquivado, recibes daño$rojo2"
						echo -e ""
					
						if [ "$zona_actual" = "BOSSEN" ]; then
					
							echo -e "El enemigo va a tirar un dado de 5 caras... veamos cuanto te quita."
							dado_enemigo=$((RANDOM % 5 + 1))
						
						else
					
							echo -e "El enmigo va a tirar un dado de 10 caras... veamos cuanto te quita."
							dado_enemigo=$((RANDOM % 10 + 1))
						
						fi
					
						echo -e "El enemigo ha sacado $amarillo1$dado_enemigo.$amarillo2"
						pv_total=$[$pv_total-$dado_enemigo]
						echo -e "Al quitarte $amarillo1$dado_enemigo$amarillo2 te quedas con $rojo1$pv_total de vida$rojo2"
						echo -e ""
						sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
					fi
					
					pv_total=$(sqlite3 MundoJavier.db 'SELECT pv FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					
					if [ $pv_total -le 0 ]; then
					
						echo -e "Te has quedado a $rojo1 0 de vida$rojo2, tu partida ha terminado."
						sqlite3 MundoJavier.db 'UPDATE jugador SET pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
						idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
						sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' ha muerto",CURRENT_TIMESTAMP);'
						killall mpg321 2> /dev/null
						sleep 1
						killall MundoJavi.sh
						
					fi
					
				done
				
			;;
			
			"curarse")
			
				objeto_bolso=$(sqlite3 MundoJavier.db 'SELECT bolso FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
				sera_pocima=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_bolso' ;')
				vida_que_da=$(sqlite3 MundoJavier.db 'SELECT pv from botin WHERE idBotin = '$objeto_bolso' ;')
				
				if [ "$sera_pocima" = "Pocion_vida" ]; then
				
					echo -e ""
					echo -e "Tienes la posibilidad de tomarte una pocion"
					echo -e "Esta te otorga $rojo1$vida_que_da de vida.$rojo2"
					echo ""
					select tomar in "Beber Pocion" "No Beber Pocion"
					do
						break
					done
					
					case $tomar in
					
						"Beber Pocion")
						
							echo -e ""
							echo -e "Has decidido bebertela. "
							pv_total=$[$pv_total+$vida_que_da]
							sqlite3 MundoJavier.db 'UPDATE jugador SET pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							sqlite3 MundoJavier.db 'UPDATE jugador SET bolso = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
							stats_actuales
							
						;;
							
						"No Beber Pocion")
						
							echo -e ""
							echo -e "Como no te la bebes te la puedes guardar para mas adelante."
							
						;;
						
					esac
					
				else
				
					echo -e ""
					echo -e "No tienes pocion"
					
				fi
					
				lineas_de_enemigos=$(cat /tmp/enemigos_final.txt | grep -v "muerto" |wc -l)
				enemigo_que_golpea_random=$((RANDOM % 1+$lineas_de_enemigos))
				que_enemigo_es=$(echo -e $enemigo_que_golpea_random | cut -d "=" -f2)
					
				echo -e "Toca el movimiento del enemigo"
				echo -e "Podras esquivar el golpe?, veamoslo..."
				echo -e ""
				
				if [ $tipo = "Mago" ]; then
	
					ProbEsquive=$((RANDOM % 2+1))
				
				elif [ $tipo = "Caballero" ]; then
	
					ProbEsquive=$((RANDOM % 4+1))
	
				elif [ $tipo = "Enano" ]; then
	
					ProbEsquive=$((RANDOM % 3+1))
							
				fi
						
				if [ $ProbEsquive = 1 ]; then
					
					echo -e "$verde1 Has esquivado gratificantemente$verde2"
						
				else
					
					echo -e "$rojo1 No has esquivado, recibes daño$rojo2"
					echo " Ademas como estabas curandote te pilla debil y te ataca con critico."
					echo -e ""
					
					if [ "$zona_actual" = "BOSSEN" ]; then
					
						echo -e "El enemigo va a tirar un dado de 7 caras... veamos cuanto te quita."
						dado_enemigo=$((RANDOM % 7 + 1))
						
					else
					
						echo -e "El enmigo va a tirar un dado de 12 caras... veamos cuanto te quita."
						dado_enemigo=$((RANDOM % 12 + 1))
						
					fi
					
					echo -e "El enemigo ha sacado $amarillo1$dado_enemigo.$amarillo2"
					pv_total=$[$pv_total-$dado_enemigo]
					echo -e "Al quitarte $amarillo1$dado_enemigo$amarillo2 te quedas con \e[91m$pv_total de vida\e[0m"
					echo -e ""
					sqlite3 MundoJavier.db 'UPDATE jugador SET pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
					
				fi
					
				pv_total=$(sqlite3 MundoJavier.db 'SELECT pv FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')	
				
				if [ $pv_total -le 0 ]; then
					
					echo -e "Te has quedado a $rojo1 0 de vida$rojo2, tu partida ha terminado."
					sqlite3 MundoJavier.db 'UPDATE jugador SET pv = 0 WHERE nombrePersonaje = "'$NOMBRE'" ;'
					idJugador_actual=$(sqlite3 MundoJavier.db 'SELECT idJugador FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
					sqlite3 MundoJavier.db 'INSERT INTO "historico" (idJugador,log,tmpsAltaRegistro) VALUES ('$idJugador_actual',"El personaje '$NOMBRE' ha muerto",CURRENT_TIMESTAMP);'
					killall mpg321 2> /dev/null
					sleep 1
					killall MundoJavi.sh
						
				fi
				
		;;
						
					
			
		esac 
		
		cantidad_enemigos=$(cat /tmp/enemigos_final.txt | grep -v "muerto" | wc -l)
			
	done
}

function usar_objeto {

	if [ $cantidad_enemigos = 0 ] && [ ! "$loc_actual" = "BOSSEN01" ] && [ ! "$loc_actual" = "TIENDA01" ] && [ ! "$loc_actual" = "FIN" ]; then

		obj_aleatorio=$(objeto_aleatorio)
		danyo_objeto=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo FROM botin WHERE nombre = "'$obj_aleatorio'" ;')
		pv_objeto=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin WHERE nombre = "'$obj_aleatorio'" ;')
		mana_objeto=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin WHERE nombre = "'$obj_aleatorio'" ;')
		
		objeto_mano_derecha=$(sqlite3 MundoJavier.db 'SELECT manoDer FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		nombre_mano_derecha=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_mano_derecha' ;')
		
		objeto_mano_izquierda=$(sqlite3 MundoJavier.db 'SELECT manoIzq FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		nombre_mano_izquierda=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_mano_izquierda' ;')
		
		objeto_torso=$(sqlite3 MundoJavier.db 'SELECT cuerpo FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		nombre_torso=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_torso' ;')
		
		objeto_bolso=$(sqlite3 MundoJavier.db 'SELECT bolso FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		sera_pocima=$(sqlite3 MundoJavier.db 'SELECT nombre FROM botin WHERE idBotin = '$objeto_bolso' ;')
		
		pv_total=$(sqlite3 MundoJavier.db 'SELECT pv FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		mana_total=$(sqlite3 MundoJavier.db 'SELECT mana FROM jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
		
		echo -e ""
		echo -e "Has recibido el objeto $obj_aleatorio"
		echo -e "Estas son sus stats : "
		echo ""
		echo -e "$rojo1 Vida extra : + $pv_objeto$rojo2"
		echo -e "$amarillo1 daño extra : + $danyo_objeto$amarillo2"
		echo -e "$azul1 Mana extra : + $mana_objeto $azul2"
		echo -e ""
		echo -e " Y las de tus objetos son : "
		echo -e ""
		stats_objetos
		
		echo -e "Quieres Coger este objeto ? "
		select coger_el_objeto in "Si" "No"
		do
			break
		done
		echo ""
		
		case $coger_el_objeto in
		
			"Si")
			
				que_es=$(sqlite3 MundoJavier.db 'SELECT idBotin FROM botin WHERE nombre = "'$obj_aleatorio'" ;')
				que_tipo_es=$(sqlite3 MundoJavier.db 'SELECT tipo FROM botin WHERE nombre = "'$obj_aleatorio'" ;')
				parte_cuerpo=$(sqlite3 MundoJavier.db 'SELECT tipo_cuerpo FROM botin WHERE nombre = "'$obj_aleatorio'" ;')
			
				if [ "$obj_aleatorio" = "Pocion_vida" ] || [ "$obj_aleatorio" = "Pocion_mana" ]; then
				
					if [ "$sera_pocima" = "Pocion_vida" ] || [ "$sera_pocima" = "Pocion_mana" ]; then
					
						echo -e "Ya tienes una $sera_pocima, puedes beberte la que tienes o la nueva."
						
						echo -e ""
						echo -e "Entonces cual quieres beberte?"
						echo -e "Tus stats son estos : "
						echo -e ""
						stats_actuales
						
						select decision_pocima in "La que porto" "Nueva"
						do
							break
						done
						echo ""
						case $decision_pocima in
						
						"La que porto")
						
							vida_que_da=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin where nombre = "Pocion_vida" ;')
							mana_que_da=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin where nombre = "Pocion_mana" ;')
							echo ""
							echo -e ""
							echo -e "Has decidido beberte la que portas encima, ahora en el bolso portas $que_es. "
							
							if [ "$sera_pocima" = "Pocion_vida" ]; then
							
								pv_total=$[$pv_total+$vida_que_da]
								sqlite3 MundoJavier.db 'UPDATE jugador SET pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								
							elif [ "$sera_pocima" = "Pocion_mana" ]; then
							
								mana_total=$[$mana_total+$mana_que_da]
								sqlite3 MundoJavier.db 'UPDATE jugador SET mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								
							fi
							

							sqlite3 MundoJavier.db 'UPDATE jugador SET bolso = '$que_es' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							stats_actuales
							
						;;
						
						"Nueva")
						
							echo "Te bebes la pocima $obj_aleatorio "
							echo "Tus stats ahora quedan asi : "
							echo ""
							
							if [ "$obj_aleatorio" = "Pocion_vida" ]; then
							
								pv_total=$[$pv_total+$pv_objeto]
								sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total'  WHERE nombrePersonaje = "'$NOMBRE'" ;'
								
							elif [ "$obj_aleatorio" = "Pocion_mana" ]; then
							
								mana_total=$[$mana_total+$mana_objeto]
								sqlite3 MundoJavier.db 'UPDATE jugador SET mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								
							fi
							
							stats_actuales

							
						;;
							
						"No")
						
							ganas=de_morirme
							
						;;
						
						esac
						
					else
					
						echo -e "Vamos a guardar la Pocima de vida en tu inventario."
						echo ""
						sqlite3 MundoJavier.db 'UPDATE jugador set bolso = '$que_es' WHERE nombrePersonaje = "'$NOMBRE'" ;'
						
					fi
					
				else
				
					if [ $parte_cuerpo = "Mano" ]; then
					
						echo -e "Has de escoger en que mano quieres equiparlo : "
						echo -e ""
						echo -e "En la mano derecha portas : $verde1$nombre_mano_derecha$verde2"
						echo ""
						echo -e "En la mano izquierda portas : $verde1$nombre_mano_izquierda$verde2"
						echo ""			
						select cambio_objeto in "Mano Derecha" "Mano Izquierda" "No"
						do
							break
						done
						echo ""
						case $cambio_objeto in
						
							"Mano Derecha")
								
									mano_derecha_pv=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin WHERE idBotin = '$objeto_mano_derecha' ;')
									mano_derecha_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo FROM botin WHERE idBotin = '$objeto_mano_derecha' ;')
									mano_derecha_mana=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin WHERE nombre = '$objeto_mano_derecha' ;')
									
									if [ "$tipo" = "Mago" ]; then
									
										mana_total=$[$mana_total-$mano_derecha_mana]
										mana_total=$[$mana_total+$mana_objeto]
										
									fi
									
									if [ ! $objeto_mano_derecha = 0 ]; then
									
									pv_total=$[$pv_total-$mano_derecha_pv]
									danyo_max=$[$danyo_max-$mano_derecha_danyo]
										
									fi
										
									pv_total=$[$pv_total+$pv_objeto]
									danyo_max=$[$danyo_max+$danyo_objeto]
									sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set danyo_max = '$danyo_max' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set manoDer = '$que_es' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									
							;;
							
							"Mano Izquierda")
							
									mano_izquierda_pv=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin WHERE idBotin = '$objeto_mano_izquierda' ;')
									mano_izquierda_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo FROM botin WHERE idBotin = '$objeto_mano_izquierda' ;')
									mano_izquierda_mana=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin WHERE idBotin = '$objeto_mano_izquierda' ;')
									
									if [ ! $objeto_mano_izquierda = 0 ]; then
									
										pv_total=$[$pv_total-$mano_izquierda_pv]
										danyo_max=$[$danyo_max-$mano_izquierda_danyo]
										
									fi
									
									if [ "$tipo" = "Mago" ]; then
									
										mana_total=$[$mana_total-$mano_izquierda_mana]
										mana_total=$[$mana_total+$mana_objeto]
										sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
										
									fi
									
									pv_total=$[$pv_total+$pv_objeto]
									danyo_max=$[$danyo_max+$danyo_objeto]
									sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set danyo_max = '$danyo_max' WHERE nombrePersonaje = "'$NOMBRE'" ;'
									sqlite3 MundoJavier.db 'UPDATE jugador set manoIzq = '$que_es' WHERE nombrePersonaje = "'$NOMBRE'" ;'	
							;;
							
							"No")
							
								easteregg="Dale a tu cuerpo alegria Macarena"
								
							;;
							
						esac
						
					elif [ $parte_cuerpo = "Torso" ]; then
					
						echo -e "En el torso portas : $verde1$nombre_torso$verde2"
						echo -e ""
						echo -e "Esta seguro de querer cambiarlo ?"
						select cambio_objeto in "Si" "No"
						do
							break
						done
						echo ""
						case $cambio_objeto in
						
							"Si")
							
								torso_pv=$(sqlite3 MundoJavier.db 'SELECT pv FROM botin WHERE idBotin = '$objeto_torso' ;')
								torso_danyo=$(sqlite3 MundoJavier.db 'SELECT bonus_danyo FROM botin WHERE idBotin = '$objeto_torso' ;')
								torso_mana=$(sqlite3 MundoJavier.db 'SELECT mana FROM botin WHERE idBotin = '$objeto_torso' ;')
								pv_total=$[$pv_total-$torso_pv]
								danyo_max=$[$danyo_max-$torso_danyo]
								
								if [ "$tipo" = "Mago" ]; then
									
									mana_total=$[$mana_total-$torso_mana]
									mana_total=$[$mana_total+$mana_objeto]
									
									sqlite3 MundoJavier.db 'UPDATE jugador set mana = '$mana_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
							
								fi
									
								pv_total=$[$pv_total+$pv_objeto]
								danyo_max=$[$danyo_max+$danyo_objeto]
								sqlite3 MundoJavier.db 'UPDATE jugador set pv = '$pv_total' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								sqlite3 MundoJavier.db 'UPDATE jugador set danyo_max = '$danyo_max' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								sqlite3 MundoJavier.db 'UPDATE jugador set cuerpo = '$que_es' WHERE nombrePersonaje = "'$NOMBRE'" ;'
								
							;;
							
							"No")
							
								po=bien
								
							;;
							
						esac
						
					fi
					
				fi
				
			;;
			
			"No")
			
				echo ""
				ta=bien
				
			;;
			
		esac
		
		stats_objetos
		stats_actuales
		
	fi
	
}

function musica {

	loc_actual=$(sqlite3 MundoJavier.db 'SELECT codLocal from jugador WHERE nombrePersonaje = "'$NOMBRE'" ;')
	
	if [ "$loc_actual" = "BOSSEN01" ] || [ "$loc_actual" = "BOSSEN02" ] || [ "$loc_actual" = "BOSSEN03" ]; then
	
		if [ "$reproduciendo" = "false" ]; then
	
			mpg321 -q -loop ./musica_bosque.mp3 2> /dev/null &
			reproduciendo="true"
			
		fi
		
	elif [ "$loc_actual" = "TIENDA01" ]; then
	
		killall mpg321
		mpg321 -q -loop ./musica_greed.mp3 2> /dev/null &
		reproduciendo="false"
	
	elif [ "$loc_actual" = "CUESEN01" ] || [ "$loc_actual" = "CUESEN02" ]; then
	
		
		if [ "$reproduciendo" = "false" ]; then
	
			killall mpg321
			mpg321 -q -loop ./musica_cuevas.mp3 2> /dev/null &
			reproduciendo="true"
			
		fi
		
	elif [ "$loc_actual" = "FINAL" ]; then
	
			killall mpg321
			mpg321 -q -loop ./musica_boss.mp3 2> /dev/null  &
	
	elif [ "$loc_actual" = "FIN" ]; then
	
			killall mpg321
			mpg321 -q -loop ./musica_congratulations.mp3 2> /dev/null &
			
	fi
	
}
