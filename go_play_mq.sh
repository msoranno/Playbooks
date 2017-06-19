#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo
	echo "Parametros incorrectos, Ejemplo: "
	echo
	echo " ./go_play_mq.sh [grupo de maquinas del fichero de inventario] [accion]"
	echo
	echo " ./go_play_mq.sh maquinasmq STOP"
	echo " ./go_play_mq.sh maquinasmq START"
	echo " ./go_play_mq.sh maquinasmq STATUS"
	echo
else
  echo
  echo "Datos pasados: "
  echo "- grupo: $1"
  echo "- accion: $2"
  echo 
  echo


  ansible-playbook --extra-vars="GRUPOMAQUINAS=$1 ACCION=$2" play_mq.yml
fi



