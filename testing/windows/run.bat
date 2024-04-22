@echo off
cd C:\%USERPROFILE%\Downloads
echo Starting server...
start /B server\server\server.bat
start /B server\bungee\bungee.bat

