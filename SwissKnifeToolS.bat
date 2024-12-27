@echo off
:: Richiedi permessi di amministratore automaticamente
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

title SwissKnifeToolS - by GioeleGregorini
chcp 65001 >nul

:menu
cls
call :banner
echo 1) Attivazione WinRAR
echo 2) Attivazione Windows e Office
echo 3) Esci
echo.
set /p scelta=Seleziona un'opzione: 

if "%scelta%"=="1" (
    call :attivazione_winrar
) else if "%scelta%"=="2" (
    call :attiva_windows_office
) else if "%scelta%"=="3" (
    exit
) else (
    echo Opzione non valida. Riprova.
    pause
    goto menu
)

:attivazione_winrar
cls
echo Avvio attivazione WinRAR...
powershell -Command "iwr -useb https://naeembolchhi.github.io/WinRAR-Activator/WRA.ps1 | iex"
echo Operazione completata.
pause
goto menu

:attiva_windows_office
cls
echo Avvio attivazione Windows e Office...
powershell -Command "irm https://get.activated.win | iex"
echo Operazione completata.
pause
goto menu

:banner
echo.
echo ███████╗██╗    ██╗██╗███████╗███████╗██╗  ██╗███╗   ██╗██╗███████╗███████╗████████╗ ██████╗  ██████╗ ██╗     ███████╗
echo ██╔════╝██║    ██║██║██╔════╝██╔════╝██║ ██╔╝████╗  ██║██║██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
echo ███████╗██║ █╗ ██║██║███████╗███████╗█████╔╝ ██╔██╗ ██║██║█████╗  █████╗     ██║   ██║   ██║██║   ██║██║     ███████╗
echo ╚════██║██║███╗██║██║╚════██║╚════██║██╔═██╗ ██║╚██╗██║██║██╔══╝  ██╔══╝     ██║   ██║   ██║██║   ██║██║     ╚════██║
echo ███████║╚███╔███╔╝██║███████║███████║██║  ██╗██║ ╚████║██║██║     ███████╗   ██║   ╚██████╔╝╚██████╔╝███████╗███████║
echo ╚══════╝ ╚══╝╚══╝ ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝     ╚══════╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
echo.                                                                                                                     
echo.
