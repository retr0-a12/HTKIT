#!/bin/bash
figlet HTKIT
echo "[1]editar archivo html"
echo "[2]iniciar apache y añadir archivo html a apache"
echo -n "elige-->"
read elige
if [ $elige = 1 ]; then
    nano index.html
elif [ $elige = 2 ]; then
    echo "iniciando"
    service apache2 start
    cp index.html /var/www/html
fi