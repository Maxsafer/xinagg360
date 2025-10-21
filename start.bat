@echo off
setlocal enabledelayedexpansion

REM Path to the Python script (same folder as this .bat)
set "SCRIPT=%~dp0xinagg360.py"

if not exist "%SCRIPT%" (
  echo [error] Could not find "%SCRIPT%"
  goto :PAUSE
)

REM Try python first
where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
  python "%SCRIPT%"
  if %ERRORLEVEL% EQU 0 goto :PAUSE
)

REM Then try python3
where python3 >nul 2>nul
if %ERRORLEVEL% EQU 0 (
  python3 "%SCRIPT%"
  if %ERRORLEVEL% EQU 0 goto :PAUSE
)

echo [error] Couldn't run Python.
echo - Make sure Python is installed and added to PATH.
echo - https://www.python.org/downloads/  (check "Add python.exe to PATH")

:PAUSE
pause
endlocal