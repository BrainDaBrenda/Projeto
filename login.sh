#!/bin/bash
clear 						#Limpar a tela
echo 						#Pula a linha
echo 'Debian GNU/Linux 8 jessie tty1' 		#Imprime na tela
echo 						#Pula a linha
echo -n 'jessie login: ' 			#Imprime e não pula linha
read USER 					#Leia e salve na variável
echo -n 'Password: ' 				#Imprime e não pula linha
read -s PASSW 				#Leia sem imprimir e salve na var
echo 						#Pula linha
if [ $USER == 'vagrant' ] 			#Se verdadeiro, faça
then
	if [ $PASSW == '123' ]  		#Se verdadeiro, faça
	then

		echo 'Seja bem vindo, meu amor'
	else  					#Caso contrário
		echo 'Senha inválida'
	fi 					#Sai do if
else 						#Caso contrário
	echo 'Usuário inválido'
fi  						#Sai do if

