#!/bin/bash

# Script de configuração para PostgreSQL

echo "Iniciando o script de configuração do PostgreSQL..."

dbname="curso_docker"
dbuser="docker_usr"
dbpassword="docker_pwd"

docker run -d --name postgresql -e POSTGRES_DB=$dbname -e POSTGRES_USER=$dbuser -e POSTGRES_PASSWORD=$dbpassword -p 5432:5432 postgres:latest

echo "Configuração concluída."