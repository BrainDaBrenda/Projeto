#!/bin/bash
#Exercicio para calculo de IMC
clear
echo 'Insira sua altura em metros'
read altura
echo 'Insira sua massa em quilos'
read massa
imc=$(echo "$massa/($altura*$altura)" | bc)
echo
echo "Seu IMC: $imc"
echo

if [[ $imc < 18 ]]
then
 echo 'Você está abaixo do peso'
elif [[ $imc > 18 && $imc < 24 ]]
then
 echo 'Você está com peso ideal'
elif [[ $imc > 25 && $imc < 29 ]]
then
 echo 'Você está levemente acima do peso'
elif [[ $imc > 30 && $imc < 34 ]]
then
 echo 'Você está com obesidade grau I'
elif [[ $imc > 35 && $imc < 40 ]]
then
echo 'Você está com obesidade grau II'
elif [[ $imc > 40 ]]
then
 echo 'Você está com obesidade grau III'

fi



#if [] ; then

#elif []; then

#else

#fi


