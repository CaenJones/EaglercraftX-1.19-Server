@echo off

:: Assuming git, curl, and JRE/JDK are already installed

:: Clone the repository
git clone https://github.com/CaenJones/EaglercraftX-1.19-Server

:: Rename the directory
ren EaglercraftX-1.19-Server server

:: Assuming server.bat and bungee.bat are already present in the server and bungee directories

:: Prompt the user to start the server
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

