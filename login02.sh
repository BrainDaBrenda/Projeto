#!/bin/bash
echo
echo 'Debian GNU/Linux 8 jessie tty1'
echo
echo -n 'jessie login: '
read USER
echo -n 'Password: '
read -s PASSWORD
echo 
if [ $USER == 'vagrant' ]
then
  if [ $PASSWORD == '123' ]
  then
    echo 'Seja bem vindo, amorzinho'
  else
    echo 'Senha inválida'
  fi
else
  echo 'Usuário inválido"
fi
