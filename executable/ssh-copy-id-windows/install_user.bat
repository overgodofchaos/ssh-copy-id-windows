@echo off
setlocal enabledelayedexpansion

set "SCRIPT_DIR=%~dp0"
set "BIN_DIR=%SCRIPT_DIR%bin"

powershell -NoProfile -Command ^
"$currentPath = [Environment]::GetEnvironmentVariable('Path', 'User'); ^
$binPath = '%BIN_DIR%'; ^
$newPath = if ($currentPath) { $currentPath + ';' + $binPath } else { $binPath }; ^
[Environment]::SetEnvironmentVariable('Path', $newPath, 'User'); ^
Write-Output 'Directory %BIN_DIR% added to PATH for current user.'; ^
"

echo Install completed.
pause