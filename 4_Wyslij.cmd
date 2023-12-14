@echo off
ECHO Pyrin wallet by PartsPC.pl
ECHO Wyslij PYI
set /p wallet=Adres portfela (pamietaj o przedrosku pyrin:):
set /p sum=Ilosc PYI:
pyrinwallet.exe send -t %wallet% -v %sum%

pause