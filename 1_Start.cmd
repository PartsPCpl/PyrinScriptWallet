@echo off
ECHO Pyrin wallet by PartsPC.pl
ECHO Start!
start /min cmd.exe /c "pyipad.exe --utxoindex"
timeout 15 > NUL
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
ECHO Ustawienia
pyrinwallet.exe create 
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
ECHO Uruchomienie 
start /min cmd.exe /c "pyrinwallet.exe start-daemon"
timeout 15 > NUL
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
pyrinwallet.exe dump-unencrypted-data
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
pyrinwallet.exe new-address
ECHO Skopiuj i zapisz swoje frazy oraz adres portfela
Taskkill /IM pyipad.exe /F > NUL
Taskkill /IM pyrinwallet.exe /F > NUL
pause
explorer "https://PartsPC.pl"
pause
pause
