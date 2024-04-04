#!/bin/bash
exit
SRV=$(dialog --menu "Choose a server software:\n(or cancel for no change)\nUse arrow keys and enter to select:" 12 40 3 1 "Paper 1.8.8 (recommended)" 2 "nPaper 1.7 (faster)" 3 "Cuberite (fastest)" --output-fd 1)

clear

case $SRV in
  1)
    echo "Switching to Paper 1.8.8..."
    rm /tmp/server.jar
    cp misc/paper-1.8.8.jar /tmp/server.jar
    rm server/plugins/Carbon.jar
    rm server/plugins/Carbon-ProtocolLib.jar
    ;;

  2)
    echo "Switching to nPaper 1.7..."
    rm /tmp/server.jar
    cp misc/npaper-1.7.jar /tmp/server.jar
    cp misc/Carbon.jar server/plugins/Carbon.jar
    cp misc/Carbon-ProtocolLib.jar server/plugins/Carbon-ProtocolLib.jar
    ;;

  3)
    echo "Switching to Cuberite..."
    if [ ! -d "cuberite" ]; then
      mkdir cuberite
      rm /tmp/Cuberite.tar.gz
      wget -O /tmp/Cuberite.tar.gz https://download.cuberite.org/linux-x86_64/Cuberite.tar.gz
      tar -xvf /tmp/Cuberite.tar.gz -C ./cuberite
      echo "[Authentication]" > cuberite/settings.ini
      echo "Authenticate=0" >> cuberite/settings.ini
      echo "AllowBungeeCord=1" >> cuberite/settings.ini
      echo "OnlyAllowBungeeCord=1" >> cuberite/settings.ini
      echo "[WebAdmin]" > cuberite/webadmin.ini
      echo "Enabled=0" >> cuberite/webadmin.ini
      rm /tmp/Cuberite.tar.gz
    fi
    rm server/server.jar
    ;;

  *)
    echo "Not changing server software..."
    exit
    ;;
esac

if [ -f "/tmp/server.jar" ]; then
  rm server/server.jar
  mv /tmp/server.jar server/server.jar
fi
