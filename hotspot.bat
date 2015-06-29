REM Please set the Hotspot Name and Password below.
REM Do not change any other lines if you don't know what you're doing.
REM This file should run in Administrator mode.
REM Right click, and select Run as Administrator.

SET Name=Private
SET Password=12345678

REM Do not edit anything other than Name and Password.

echo off
cls
SET MSG=NONE

echo ===Instant Hotspot===
echo       @xaneem
echo.
echo You may change network name and password 
echo by Right-clicking this file, and select Edit.
echo.
echo Default Name: %Name%
echo Default Password: %Password%
echo.
:ask 
set INPUT=
set /P INPUT=Start(f) / Stop(j) hostpot? (x) to cancel: %=%
If /I %INPUT%==f goto start
If /I %INPUT%==j goto stop
If /I %INPUT%==x goto end
cls
echo Invalid option.
echo.
goto ask

:start
echo.
echo Message:
netsh wlan set hostednetwork mode=allow ssid=%Name% key=%Password% keyUsage=persistent >nul
netsh wlan start hosted network

FOR /F %%I IN ('netsh wlan start hosted network') DO SET MSG=%%I
goto end

:stop
echo.
echo Message:
netsh wlan stop hosted network
SET MSG=NONE
goto end


:end
echo.
IF %MSG%==A echo Make sure your Wi-Fi is turned on
IF %MSG%==You echo Please right click this file and select "Run as Administrator".
IF %MSG%==The echo The Wifi hostspot has started.
IF %MSG%==The echo Make sure you are sharing the correct internet connection in Network Connections.
echo.
echo ===Thank you===
pause >nul
