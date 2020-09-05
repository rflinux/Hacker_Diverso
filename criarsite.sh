#!/bin/bash

#Esse script cria um site com servidor apache

#Instalar os pacotes necessarios para o Apache
yum install -y httpd

#Abrir o Firewall
firewall-cmd --permanent --add-service=http
firewall-cmd --reload

#Habilitar o apache no inicio so sistema Linux
systemctl enable httpd

#Iniciar o Servidor apos instalado
systemctl start httpd

#Criar o arquivo HTNL
echo "meu novo site" > /var/www/html/index.html
