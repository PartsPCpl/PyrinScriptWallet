@echo off
ECHO Karlsen wallet by PartsPC.pl
ECHO Wyslij KLS
set /p wallet=Adres portfela (pamietaj o przedrosku karlsen:):
set /p sum=Ilosc KLS:
karlsenwallet.exe send -t %wallet% -v %sum%

pause