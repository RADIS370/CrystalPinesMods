@echo off
cd C:\projectpinefolder
echo There is a new update for crystal pines!
echo Close out of this program if you dont want to update,or press any key to continue.
timeout 120
echo Starting update.
curl -LJO --insecure https://github.com/RADIS370/CrystalPinesMods/raw/main/updl.txt
curl -LJO --insecure https://github.com/RADIS370/CrystalPinesMods/raw/main/updc.txt
set /p updl=< updl.txt
set /p updc=< updc.txt
%updl%
timeout 30
%updc%
del ver.txt
ren verd.txt ver.txt
echo Update Completed!
