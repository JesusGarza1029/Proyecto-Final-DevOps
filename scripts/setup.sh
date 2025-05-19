#!/bin/bash

echo "Actualizando sistema..."
sudo yum update -y

echo "Instalando paquetes requeridos..."
sudo yum install -y git vim docker python3

echo "Iniciando Docker..."
sudo service docker start
sudo usermod -aG docker ec2-user

echo "Entorno base configurado."
