#! /bin/bash

echo "Atualizando o Servidora e instalando o Apache 2 e Unzip"

apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Apagando página inicial padrão do Apache"

rm /var/www/html/index.html

echo "Baixando a aplicação no diretório temporário"

cd \tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando e copiando Aplicação para o diretório padrão do Apache"

unzip main.zip
cd linux-site-dio-main
cp * /var/www/html/ -R

echo "Fim do iac"
