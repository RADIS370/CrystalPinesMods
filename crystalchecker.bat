SETLOCAL ENABLEDELAYEDEXPANSION
IF "%STARTED%"=="" SET STARTED=0
IF "%started%"=="0" (
   SET STARTED=1
   powershell -ExecutionPolicy Bypass -command "Start-Process "C:\projectpinefolder\crystalchecker.bat" -WindowStyle Hidden"
   exit
  ) ELSE (
  goto ok
  )


:ok
cd C:\projectpinefolder
SET STARTED=0
del verd.txt
curl -LJO --insecure https://github.com/RADIS370/CrystalPinesMods/raw/main/verd.txt
set /p ver=< ver.txt
set /p verd=< verd.txt
if %verd% GTR %ver% (
start updater.bat
timeout 600
goto ok
)
else (
timeout 600
goto ok
)
