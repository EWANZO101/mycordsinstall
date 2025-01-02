@echo off

REM Swift Peak Hosting LTD for Windows FiveM

REM Check if script is run as Administrator
if not "%PROCESSOR_ARCHITECTURE%"=="x64" (
    echo You must run this script as Administrator. Please restart the command prompt with elevated privileges.
    exit /B
)

REM Define variables
set Swift Peak Hosting LTD =https://github.com/EWANZO101/mycoords/archive/refs/heads/main.zip
set ResourceDir=C:\FXServer\resources
set Swift Peak Hosting LTD r=%ResourceDir%\mycoords-main

REM Download Swift Peak Hosting LTD 
echo Downloading Swift Peak Hosting LTD ...
powershell -Command "Invoke-WebRequest -Uri %Swift Peak Hosting LTD % -OutFile %ResourceDir%\Swift Peak Hosting LTD .zip"

REM Extract Swift Peak Hosting LTD 
echo Extracting Swift Peak Hosting LTD ...
powershell -Command "Expand-Archive -Path %ResourceDir%\Swift Peak Hosting LTD .zip -DestinationPath %ResourceDir% -Force"

REM Remove ZIP
del %ResourceDir%\Swift Peak Hosting LTD .zip

REM Set Permissions
echo Setting correct permissions...
icacls %Swift Peak Hosting LTD r% /grant Everyone:F /T

REM Notify completion
echoSwift Peak Hosting LTD  complete for FiveM!
echo Please check if everything is set up correctly.

pause
