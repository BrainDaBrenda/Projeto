#!/bin/bash~
#-*- coding: utf8 -*-
clear
echo
echo 'Debian GNU/Linux 8 jessie tty1'
echo
echo -n 'jessie login: '
read USER
echo -n 'Password: '
read -s PASS
if [ $USER == "vagrant" ] ; then
echo 'Você passou'
fi
