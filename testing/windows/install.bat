@echo off
git clone https://github.com/CaenJones/EaglercraftX-1.19-Server
ren EaglercraftX-1.19-Server server
echo Repo Installed! Start Server? (y/n)
set /p startServer=

if /I "%startServer%"=="y" (
    echo Starting server...
    start /B server\server.bat
    start /B server\bungee\bungee.bat
) else if /I "%startServer%"=="n" (
    echo Use server\server.bat to start server!
    curl -O https://github.com/CaenJones/EaglercraftX-1.19-Server/blob/main/testing/linux/run.sh
    echo run.sh downloaded. Use it to start the server.
) else (
    echo Invalid input. Please enter 'y' for yes or 'n' for no.
)

