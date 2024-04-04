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
