poetry run nuitka --onefile ssh-copy-id.py --output-filename=ssh-copy-id.exe
move /Y %~dp0ssh-copy-id.exe %~dp0executable\ssh-copy-id-windows\bin\ssh-copy-id.exe
7z a -tzip %~dp0executable\ssh-copy-id-windows.zip %~dp0executable\ssh-copy-id-windows
pause