@echo off
ECHO Karlsen wallet by PartsPC.pl
ECHO Start!
start /min cmd.exe /c "karlsend.exe --utxoindex"
timeout 15 > NUL
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
ECHO Ustawienia
karlsenwallet.exe create 
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
ECHO Uruchomienie 
start /min cmd.exe /c "karlsenwallet.exe start-daemon"
timeout 15 > NUL
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
karlsenwallet.exe dump-unencrypted-data
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
karlsenwallet.exe new-address
ECHO Skopiuj i zapisz swoje frazy oraz adres portfela
Taskkill /IM karlsend.exe /F > NUL
Taskkill /IM karlsenwallet.exe /F > NUL
pause
explorer "https://PartsPC.pl"
pause
pause
