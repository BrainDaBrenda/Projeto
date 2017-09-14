#!/bin/bash 
clear
echo 'Você gosta de Linux? Responda exatamente com Sim ou Não'
read ANS
echo 'Você é menino ou menina? Responda com a primeira letra maiúscula'
read ANSS
if [ $ANS == 'Sim' ]
then
	if [ $ANSS == 'Menino' ]
	then
	 echo 'Você é um cara muito legal'
	else
	 echo 'Você é uma moça muito legal'
	fi
else
	if [ $ANSS == 'Menino' ]
	then
	 echo 'Você precisa aprender muito'
	else
	 echo 'Um dia você vai gostar'
	fi
fi
#Carinho por esse aqui s2
