@echo off
ECHO Karlsen wallet by PartsPC.pl
ECHO Start!
start /min cmd.exe /c "karlsend.exe --utxoindex & pause"
timeout 15 > NUL
ECHO Uruchomiono synchronizacje
ECHO XXXXXXXXXXXXXXXXXXXXXXXXX
ECHO Uruchomienie daemona
start /min cmd.exe /c "karlsenwallet.exe start-daemon & pause"
timeout 15 > NUL
ECHO Portfel uruchomiony
ECHO Czekamy na synchronizacje
timeout 45 > NUL
explorer "https://PartsPC.pl"