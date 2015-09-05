#!/bin/bash

##
# Copyright 2015 Sayghteight
# En colaboracón con Berti


#setlocal EnableDelayedExpansion
010Updates="All_Updates010.sql"
011Updates=="All_Updates011.sql"
012Updates="All_Updates012.sql"
012b1Updates="All_Updates0121.sql"
012b2Updates="All_Updates0122.sql"
012b3="All_Updates0123.sql"
05="All_Updates05.sql"
06="All_Updates06.sql"
07="All_Updates07.sql"
08="All_Updates08.sql"
09="All_Updates09.sql"
Auxiliar="aux.sql"

function borrar_antiguos () {
	if [ -f $010Updates ]; then
	 rm $010Updates
	fi
	if [ -f $011Updates ]; then
	 rm $011Updates
	fi
	if [ -f $012Updates ]; then
	 rm $012Updates
	fi
	if [ -f $012b1Updates ]; then
	 rm $012b1Updates
	fi
	if [ -f $012b2Updates ]; then
	 rm $012b2Updates
	fi
	if [ -f $012b3 ]; then
	 rm $012b3
	fi
    if [ -f $05 ]; then
     rm $05
    fi
    if [ -f $06 ]; then
    	rm $06
    fi
    if [ -f $07 ]; then
    	rm $07
    fi
	if [ -f $08 ]; then
	 rm $08
	fi
	if [ -f $09 ]; then
	 rm $09
	fi
	}
function borrar_auxiliar_dynzero () {
	if [ -f $1 ]; then
		rm $1
	fi
	}
function generar_sql_dynzero () {
	for a in $2 
		do
			borrar_auxiliar_dynzero $Auxiliar
			echo "/*" >> $1
			echo "* $a" >> $1
			echo "*/" >> $1
			cat $1 $a > $Auxiliar
			cp $Auxiliar $1
			echo "" >> $1
			echo "" >> $1
			echo "$a"
		done
	}

function mensaje () {
	if [ $1 == 1 ]; then
		echo "##########################################################"
		echo "##                                                      ##"
		echo "##     Dyncore zero- Archivo de unificacion de SQL's    ##"
		echo "##                                                      ##"
		echo "##########################################################"
		echo "By Sayghteight"
		echo "version for GNU/Linux by badanni"
		echo .
		echo .
		echo .
		echo "Los siguientes pasos que realizara nuestro Merge"
		echo "Es la unificación de los archivos updates de nuestro"
		echo "Core classic"
		echo .
		echo .
		echo .
		echo "presiones Ctrl+C para cancelar caso contrario en 5 segundos"
		echo "continuara"
		sleep 5
		echo "El proceso empezara AHORA!"
	else
		echo "Dyncore Zero"
		sleep 5
	fi
	}

mensaje 1
borrar_antiguos
generar_sql_dynzero $010Updates="updates/0.10/*.sql"
generar_sql_dynzero $011Updates=="updates/0.11/*.sql"
generar_sql_dynzero $012Updates="updates/0.12/*.sql"
generar_sql_dynzero $012b1Updates="updates/0.12.1/*.sql"
generar_sql_dynzero $012b2Updates="updates/0.12.2/*.sql"
generar_sql_dynzero $012b3="updates/0.12.3/*.sql"
generar_sql_dynzero $05="updates/0.5/*.sql"
generar_sql_dynzero $06="updates/0.6/*.sql"
generar_sql_dynzero $07="updates/0.7/*.sql"
generar_sql_dynzero $08="updates/0.8/*.sql"
generar_sql_dynzero $09="updates/0.9/*.sql"
borrar_auxiliar_dynzero $Auxiliar
mensaje 2