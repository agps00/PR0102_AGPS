# Práctica 0102 — Despliegue de Aplicaciones Web

## 1. Actualizar los repositorios

Primero actualizamos la información de los repositorios de Ubuntu:

```bash
sudo apt update
```
![Actualización de repositorios](images/01_update.png)

---

## 2. Instalación del ssh

Se instaló el servidor SSH para permitir la administración remota de la máquina:

```bash
sudo apt install -y openssh-server
```
![Actualización de repositorios](images/02_shh.png)

---

## 3. Instalación de las dependencias de Webmin

Se instalaron las herramientas necesarias para configurar el repositorio de Webmin:

```bash
sudo apt install -y software-properties-common apt-transport-https
```
![Actualización de repositorios](images/03_dependenciaswebmin.png)

---

## 4. Descarga del script

```bash
curl -o webmin-setup-repo.sh https://raw.githubusercontent.com/webmin/webmin/master/webmin-setup-repo.sh
```
![Actualización de repositorios](images/04_descargar_script.png)


