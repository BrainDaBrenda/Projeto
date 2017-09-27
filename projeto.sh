#!/bin/bash
USER="brenda"
PASS="brenda"
create(){
 read -p "Código 'criar' executado"
 menu
}

remove(){ 
 read -p "Código 'remover' executado"
 menu
}

sair(){
 $(exit 0)
 clear
 echo "Você saiu"
}

menu(){
 clear
 echo "1 - Criar usuários"
 echo "2 - Remover usuários"
 echo "3 - Sair do programa"
 echo "--------------------"
 read -p "Escolha uma opção: " OPTION
[ $OPTION == "1" ] && create
[ $OPTION == "2" ] && remove
[ $OPTION == "3" ] && sair
}

logar(){
 clear
 read -p "Login: " LOGIN
 read -s -p "Password: " PASSWORD
 [ $LOGIN == $USER ] && [ $PASSWORD == $PASS ] && menu || logar
}

logar
