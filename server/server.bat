@echo off
echo Starting Server...
start /B java -Dlog4j2.formatMsgNoLookups=true -jar server.jar
set pid=%errorlevel%

:loop
timeout /t 5 /nobreak >nul
tasklist /FI "PID eq %pid%" 2>NUL | find /I /N "java.exe">NUL
if "%errorlevel%"=="0" (
    echo Server is running.
) else (
    echo Detected Server in crashed/stopped state!
    echo Restarting...
    start /B java -Xmx4G -jar server.jar
    set pid=%errorlevel%
)
goto loop
