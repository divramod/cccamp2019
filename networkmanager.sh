#!/bin/sh
echo "Start importing camp network connection"
curl -o Camp2019.nmconnection https://raw.githubusercontent.com/divramod/cccamp2019/master/Camp2019.nmconnection
sudo rm -f /etc/NetworkManager/system-connections/Camp2019.nmconnection
sudo mv Camp2019.nmconnection /etc/NetworkManager/system-connections
sudo chmod 600 /etc/NetworkManager/system-connections/Camp2019.nmconnection
sudo ls -lisa /etc/NetworkManager/system-connections
echo "Finished importing camp network connection"
