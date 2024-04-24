#!/bin/bash

sudo apt update
sudo apt install git curl default-jre default-jdk -y
git clone https://github.com/CaenJones/EaglercraftX-1.19-Server
mv EaglercraftX-1.19-Server server


echo Server installed! Please read the documentation before starting...
echo https://github.com/CaenJones/EaglercraftX-1.19-Server/tree/main#eaglercraftx-119-server
