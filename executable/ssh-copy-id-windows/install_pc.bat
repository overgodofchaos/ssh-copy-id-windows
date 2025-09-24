@echo off
setlocal enabledelayedexpansion

net session >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo To add a program to the PC's PATH, the script must be run as administrator.
    pause
    exit /b 1
)

set "SCRIPT_DIR=%~dp0"
set "BIN_DIR=%SCRIPT_DIR%bin"

powershell -NoProfile -Command ^
"$currentPath = [Environment]::GetEnvironmentVariable('Path', 'Machine'); ^
$binPath = '%BIN_DIR%'; ^
$newPath = if ($currentPath) { $currentPath + ';' + $binPath } else { $binPath }; ^
[Environment]::SetEnvironmentVariable('Path', $newPath, 'Machine'); ^
Write-Output 'Directory %BIN_DIR% added to PATH for current user.'; ^
"

echo Install completed.
pause