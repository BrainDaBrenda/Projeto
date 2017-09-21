#!/bin/bash
clear
echo "Digite a sua massa:"
read MASSA
echo "Digite a sua altura:"
read ALTURA
IMC=$(echo "$MASSA/($ALTURA*$ALTURA)" | bc)
echo $IMC

if (($IMC < 18)) ; then
     echo "vc está magrinho"

elif (($IMC < 25)) ; then
     echo "vc esta no peso ideal!"

elif (($IMC < 30)) ; then
     echo "vc esta esta quase obeso!"

elif (($IMC < 35)) ; then
     echo "vc esta obeso!"

elif (($IMC  > 40)) ; then
     echo "vc esta mt obeso!"
fi


