#!/bin/bash

# Actualizamos repositorios
sudo apt update

# Instalamos dependencias
sudo apt install -y software-properties-common apt-transport-https curl

# Añadir repositorio de Webmin
curl -o webmin-setup-repo.sh http://raw.githubusercontent.com/webmin/webmin/master/webmin-setup-repo.sh

# La configuración del repositorio
sudo sh webmin-setup-repo.sh

# Actualizar los repositorios
sudo apt update

# Instalación del webmin
sudo apt install -y webmin

# Configurar contraseña de root de webmin
sudo /usr/share/webmin/changepass.pl /etc/webmin root "$WEBMIN_ROOT_PASSWORD"

# Comprobación del servicio
sudo systemctl status webmin

# Comprobación de la red
ip a

# Configurar el firewall
sudo ufw allow ssh
sudo ufw allow 10000/tcp
sudo ufw enable

# Comprobamos
sudo ufw status

# Iniciar Webmin
sudo systemctl enable --now webmin

echo "Webmin se ha instalado correctamente"
