@echo off
setlocal

if "%~1"=="" goto :usage

set "BASE=%~dp0"
set "AGG=%BASE%xinagg360.exe"
set "GAME=%BASE%%~1"

if not exist "%AGG%" echo [error] Missing xinagg360.exe & exit /b 2
if not exist "%GAME%" echo [error] Missing %~1 & exit /b 3

start "" "%AGG%"
timeout /t 1 >nul
start "" "%GAME%"
exit /b 0

:usage
echo Usage: %~nx0 GameExeName.exe
exit /b 1