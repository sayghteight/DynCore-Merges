#!/bin/bash

##
# Copyright 2015 Sayghteight
# En colaboracón con Berti

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
	

cat updates/0.10/*.sql > 0.10-Allupdates.sql
cat updates/0.11/*.sql > 0.11-Allupdates.sql
cat updates/0.12/*.sql > 0.11-Allupdates.sql
cat updates/0.12.1/*.sql > 0.12.1-Allupdates.sql
cat updates/0.12.2/*.sql > 0.12-2-Allupdates.sql
cat updates/0.12.3/*.sql > 0.12-3-Allupdates.sql
cat updates/0.5/*.sql > 0.5-Allupdates.sql
cat updates/0.6/*.sql > 0.6-Allupdates.sql
cat updates/0.7/*.sql > 0.7-Allupdates.sql
cat updates/0.8/*.sql > 0.8-Allupdates.sql
cat updates/0.9/*.sql > 0.9-Allupdates.sql

cat *.sql > all.sql