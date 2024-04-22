@echo off
cd C:\%USERPROFILE%\Downloads
echo Downloading EaglercraftX-1.19-Server...
curl -L -o EaglercraftX-1.19-Server.zip https://github.com/CaenJones/EaglercraftX-1.19-Server/archive/refs/heads/main.zip
echo Extracting files...
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('EaglercraftX-1.19-Server.zip', '.'); }"
ren EaglercraftX-1.19-Server-main server
echo Repo Installed! Start Server? (y/n)
set /p startServer=

if /I "%startServer%"=="y" (
    echo Starting server...
    start /B server\server.bat
    start /B server\bungee\bungee.bat
) else if /I "%startServer%"=="n" (
    echo Use server\server.bat to start server!
    echo run.sh is not applicable on Windows. Please use server\server.bat to start the server.
) else (
    echo Invalid input. Please enter 'y' for yes or 'n' for no.
)
