#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo
	echo "Parametros incorrectos, Ejemplo: "
	echo
	echo " ./go_play_db2.sh [grupo de maquinas del fichero de inventario] [accion]"
	echo
	echo " ./go_play_db2.sh maquinasdb2 STOP"
	echo " ./go_play_db2.sh maquinasdb2 START"
	echo " ./go_play_db2.sh maquinasdb2 STATUS"
        echo " ./go_play_db2.sh maquinasdb2 VERSION"
	echo
else
  echo
  echo "Datos pasados: "
  echo "- grupo: $1"
  echo "- accion: $2"
  echo 
  echo


  ansible-playbook --extra-vars="GRUPOMAQUINAS=$1 ACCION=$2" play_db2.yml
fi



