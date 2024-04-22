#!/bin/bash
echo Starting server...
mv EaglercraftX-1.19-Server server
chmod +x /server/server/server.sh
chmod +x /server/bungee/bungee.sh
./server/server/server.sh &
./server/bungee/bungee.sh &
