@echo off
echo Starting Bungee...
start /B java -Dlog4j2.formatMsgNoLookups=true -Xms4G -Xmx4G -jar bungee.jar
set pid=%errorlevel%

:loop
timeout /t 5 /nobreak >nul
tasklist /FI "PID eq %pid%" 2>NUL | find /I /N "java.exe">NUL
if "%errorlevel%"=="0" (
    echo Bungeecord is running.
) else (
    echo Detected Bungeecord in crashed/stopped state!
    echo Restarting...
    start /B java -Dlog4j2.formatMsgNoLookups=true -Xms4G -Xmx4G -jar bungee.jar
    set pid=%errorlevel%
)
goto loop
