#!/bin/bash

# Crear usuario
read -p "Nombre del nuevo usuario: " user
sudo adduser $user

# Añadir al grupo docker
sudo usermod -aG docker $user

# Crear directorio de trabajo
mkdir -p /home/$user/proyecto-devops
sudo chown -R $user:$user /home/$user/proyecto-devops

echo "Usuario $user creado y configurado."
