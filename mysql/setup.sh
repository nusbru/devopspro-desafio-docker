#!/bin/bash

# Script de configuração para PostgreSQL

echo "Iniciando o script de configuração do MySql..."

dbname="curso_docker"
dbuser="docker_usr"
dbpassword="docker_pwd"

docker run -d --name mysql -e MYSQL_DATABASE=$dbname -e MYSQL_USER=$dbuser -e MYSQL_PASSWORD=$dbpassword -e MYSQL_ROOT_PASSWORD=$dbpassword -p 3306:3306 mysql:latest

echo "Configuração concluída."