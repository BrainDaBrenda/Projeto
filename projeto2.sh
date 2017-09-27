#!/bin/bash
USER="brenda"
PASS="6a09e45514dfa07d8ae488803cec64f5f6b139e792ae369cb96ce1f59df12068"
create(){
 read -p "Código 'criar' executado. Pressione [enter] para continuar."
 menu
}

remove(){ 
 read -p "Código 'remover' executado. Pressione [enter] para continuar."
 menu
}

sair(){
 $(exit 0)
 clear
 echo "s2 Você saiu. Nos vemos em breve c;"
}

menu(){
 clear
 echo "Criar - Criar usuários"
 echo "Remover - Remover usuários"
 echo "Sair - Sair do programa"
 echo "--------------------------"
 read -p "Escolha uma opção: " OPTION
 OPTION=$(echo $OPTION | tr A-Z a-z)
 case $OPTION in 
 "criar") create ;;
 "remover") remove ;;
 "sair") sair ;;
 *) clear ; read -p "Opção inválida. Pressione [enter] para sair."; menu ;;
 esac
}

logar(){
 clear
 read -p "Login: " LOGIN
 read -s -p "Password: " PASSWORD
 PASSWORD=$(echo $PASSWORD | sha256sum | cut -d" " -f1)
 [ $LOGIN == $USER ] && [ $PASSWORD == $PASS ] && menu || logar
}

logar
