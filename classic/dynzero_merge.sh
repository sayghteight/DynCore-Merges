  GNU nano 2.2.6                    File: DynZero-Merge.sh                                              

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
sleep 5
clear
echo .
echo .
echo .
echo    "  .__         .___.           .  ."            
echo    "  |  \  .._     _/  _ ._. _   |\/| _ ._. _  _ "
echo    "  |__/\_|[ )  ./__.(/,[  (_)  |  |(/,[  (_](/,"
echo    "._|                               ._|   "
echo    ""
echo .
echo .
mkdir merge
echo "Juntando los archivos de la carpeta updates 0.10"
sleep 1
cat updates/0.10/*.sql > merge/0.10-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.11"
sleep 1
cat updates/0.11/*.sql > merge/0.11-Allupdates.sq
echo "Juntando los archivos de la carpeta updates 0.12"
sleep 1
cat updates/0.12/*.sql > merge/0.12-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.11"
sleep 1
cat updates/0.12.1/*.sql > merge/0.12.1-Allupdates.sqlecho 
"Juntando los archivos de la carpeta updates 0.12.2"
sleep 1
cat updates/0.12.2/*.sql > merge/0.12.2-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.12.2"
sleep 1
cat updates/0.12.3/*.sql > merge/0.12.3-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.12.2"
sleep 1
cat updates/0.5/*.sql > merge/0.5-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.5"
sleep 1
cat updates/0.6/*.sql > merge/0.6-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.6"
sleep 1
cat updates/0.7/*.sql > merge/0.7-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.7"
sleep 1
cat updates/0.8/*.sql > merge/0.8-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.8"
sleep 1
cat updates/0.9/*.sql > merge/0.9-Allupdates.sql
echo "Juntando los archivos de la carpeta updates 0.9"
sleep 1
echo "Te estamos llevando a la localización de la carpeta merge donde estan todos los archivos unidos"
cd /merge

sleep 6

