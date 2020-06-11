#!/bin/bash
cd $1
touch /tmp/${2}_dep
echo "Début de l'installation"

echo 0 > /tmp/${2}_dep

sudo apt-get install -y libpcap-dev

wget https://raw.githubusercontent.com/lunarok/jeedom_nodejs/f64d88e0dfe04371b20af2815db37e7a1db6462b/nodejs.sh -O dependencies.sh
sh dependencies.sh ${1} ${2}
rm dependencies.sh

rm /tmp/${2}_dep

echo "Fin de l'installation"
