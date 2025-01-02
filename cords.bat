@echo off

REM Swift Peak Hosting LTD for Windows FiveM

REM Check if script is run as Administrator
if not "%PROCESSOR_ARCHITECTURE%"=="x64" (
    echo You must run this script as Administrator. Please restart the command prompt with elevated privileges.
    exit /B
)

REM Define variables
set SwiftPeakHostingURL=https://github.com/EWANZO101/mycoords/archive/refs/heads/main.zip
set ResourceDir=C:\FXServer\resources
set SwiftPeakHostingDir=%ResourceDir%\mycoords-main

REM Download Swift Peak Hosting LTD
echo Downloading Swift Peak Hosting LTD ...
powershell -Command "Invoke-WebRequest -Uri %SwiftPeakHostingURL% -OutFile %ResourceDir%\SwiftPeakHosting.zip"

REM Check if download was successful
if errorlevel 1 (
    echo Failed to download Swift Peak Hosting LTD. Please check the URL or your internet connection.
    exit /B
)

REM Extract Swift Peak Hosting LTD
echo Extracting Swift Peak Hosting LTD ...
powershell -Command "Expand-Archive -Path %ResourceDir%\SwiftPeakHosting.zip -DestinationPath %ResourceDir% -Force"

REM Remove ZIP
if exist %ResourceDir%\SwiftPeakHosting.zip (
    del %ResourceDir%\SwiftPeakHosting.zip
)

REM Set Permissions
echo Setting correct permissions...
icacls %SwiftPeakHostingDir% /grant Everyone:F /T

REM Notify completion
echo Swift Peak Hosting LTD complete for FiveM!
pause
