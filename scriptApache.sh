#!/bin/bash

echo "update && upgrade"

Sudo apt update && sudo apt upgrade

echo "installing apache and unzip"

sudo apt install apache2 -y 

sudo apt install unzip -y

echo "download and unzip project"

sudo mkdir /var/www/html/project
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip -d /var/www/html/project




