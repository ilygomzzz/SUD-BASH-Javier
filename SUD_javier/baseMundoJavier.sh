#!/bin/bash

sqlite3 MundoJavier.db "CREATE TABLE IF NOT EXISTS "historico" (
	"idHistoria"	INTEGER NOT NULL UNIQUE,
	"idJugador"	INTEGER NOT NULL,
	"log"		TEXT NOT NULL,
	"tmpsAltaRegistro"	TIMESTAMP NOT NULL,
	PRIMARY KEY("idHistoria" AUTOINCREMENT)
);"

sqlite3 MundoJavier.db "CREATE TABLE IF NOT EXISTS "jugador" (
	"idJugador"		INTEGER NOT NULL UNIQUE,
	"nombrePersonaje"	TEXT NOT NULL,
	"nivel"			INTEGER NOT NULL DEFAULT(1),
	"xp"			INTEGER NOT NULL DEFAULT(0),
	"pv"			INTEGER NOT NULL DEFAULT(0),
	"mana"			INTEGER NOT NULL DEFAULT (0),
	"danyo_min"		INTEGER NOT NULL DEFAULT (0),
	"danyo_max"		INTEGER NOT NULL DEFAULT (0),
	"manoIzq"		INTEGER NOT NULL DEFAULT(0),
	"manoDer"		INTEGER NOT NULL DEFAULT(0),
	"cuerpo"		INTEGER NOT NULL DEFAULT(0),
	"bolso"			INTEGER DEFAULT(0),
	"monedas"		INTEGER DEFAULT(0),
	"tipo"			TEXT NOT NULL,
	"enemigos_muertos"	INTEGER NOT NULL,
	"codLocal"		TEXT NOT NULL,
	PRIMARY KEY("idJugador")
);"

sqlite3 MundoJavier.db "CREATE TABLE IF NOT EXISTS "localizacion" (
	"codLocal"	TEXT NOT NULL UNIQUE,
	"descripcion"	TEXT,
	"retrocede"	TEXT,
	"avanza"	TEXT,
	"codZona"	TEXT NOT NULL,
	PRIMARY KEY("codLocal")
);"

sqlite3 MundoJavier.db "CREATE TABLE IF NOT EXISTS "zona" (
	"codZona"	TEXT NOT NULL UNIQUE,
	"nombre"	TEXT NOT NULL,
	"descripcion"	TEXT,
	PRIMARY KEY("codZona")
);"

sqlite3 MundoJavier.db "CREATE TABLE IF NOT EXISTS "enemigo" (
	"idEnemigo"	INTEGER NOT NULL UNIQUE,
	"nombre"	TEXT NOT NULL,
	"nivel"		INTEGER NOT NULL,
	"pv"		INTEGER NOT NULL,
	"monedas"	INTEGER DEFAULT 0 NOT NULL,
	"codZona"	TEXT NOT NULL ,
	PRIMARY KEY("idEnemigo")
);"

sqlite3 MundoJavier.db "CREATE TABLE IF NOT EXISTS "botin" (
	"idBotin" INTEGER NOT NULL UNIQUE,
	"nombre" TEXT NOT NULL,
	"pv"	 INTEGER DEFAULT 0 NOT NULL,
	"bonus_danyo"  INTEGER DEFAULT 0 NOT NULL,
	"mana"		INTEGER DEFAULT 0 NOT NULL,
	"coste"		INTEGER DEFAULT 0 NOT NULL,
	"tipo"		TEXT,
	"tipo_cuerpo"	TEXT,
	PRIMARY KEY("idBotin")
);"


## Los exportamos a nuestra base

sqlite3 MundoJavier.db ".mode csv" ".import zona.csv zona" ".exit"
sqlite3 MundoJavier.db ".mode csv" ".import botin.csv botin" ".exit"
sqlite3 MundoJavier.db ".mode csv" ".import enemigo.csv enemigo" ".exit"
sqlite3 MundoJavier.db ".mode csv" ".import localizacion.csv localizacion" ".exit"
