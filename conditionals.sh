#!/bin/bash

read -p "Enter the name of your PC brand: " PC

case $PC in

  Apple )
    echo -n "${PC}'s PC factories are in China, Vietnam and India."
    ;;

  Dell | Windows )
    echo -n "${PC}'s PC factory is in China."
    ;;

  Google )
    echo -n "${PC}'s PC factory is in Vietnam."
    ;;

  *)
    echo -n "${PC} is an unknown PC brand"
    ;;

esac