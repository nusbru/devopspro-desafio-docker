#!/bin/bash

# Script de configuração para MongoDB

echo "Iniciando o script de configuração do MongoDB..."

dbuser="docker_usr"
dbpassword="docker_pwd"

docker run -d --name mongo -e MONGO_INITDB_ROOT_USERNAME=$dbuser -e MONGO_INITDB_ROOT_PASSWORD=$dbpassword -p 27017:27017 mongo:latest

echo "Configuração concluída."