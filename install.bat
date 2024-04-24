@echo off
echo Downloading EaglercraftX-1.19-Server...
curl -L -o EaglercraftX-1.19-Server.zip https://github.com/CaenJones/EaglercraftX-1.19-Server/archive/refs/heads/main.zip
echo Extracting files...
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('EaglercraftX-1.19-Server.zip', '.'); }"
ren EaglercraftX-1.19-Server-main server
echo Server installed! Please read documentation before starting...
echo https://github.com/CaenJones/EaglercraftX-1.19-Server/tree/main#eaglercraftx-119-server
pause

