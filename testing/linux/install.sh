#!/bin/bash

sudo apt update
sudo apt install git curl default-jre default-jdk -y
git clone https://github.com/CaenJones/EaglercraftX-1.19-Server
mv EaglercraftX-1.19-Server server

echo "Repo Installed! Start Server? (y/n)"
read startServer

if [ "$startServer" = "y" ]; then
    echo "Starting server..."
    ./server/server/server.sh &
    ./server/bungee/bungee.sh &
elif [ "$startServer" = "n" ]; then
    echo "Use ./run.sh to start server!"
    curl -O https://github.com/CaenJones/EaglercraftX-1.19-Server/blob/main/testing/linux/run.sh
    chmod +x run.sh
else
    echo "Invalid input. Please enter 'y' for yes or 'n' for no."
fi
