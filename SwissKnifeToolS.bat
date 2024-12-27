@echo off
:: Richiedi permessi di amministratore automaticamente
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:: Imposta la lingua predefinita (inglese)
set LANG=en

title SwissKnifeToolS - by GioeleGregorini
chcp 65001

:main_menu
cls
call :banner

:: Mostra il menu in base alla lingua selezionata
if "%LANG%"=="en" (
    echo 1^) Activate WinRAR
    echo 2^) Activate Windows and Office
    echo 3^) Change Language
    echo 4^) Exit
    echo.
    set /p choice=Select an option: 
) else if "%LANG%"=="it" (
    echo 1^) Attiva WinRAR
    echo 2^) Attiva Windows e Office
    echo 3^) Cambia Lingua
    echo 4^) Esci
    echo.
    set /p choice=Seleziona un'opzione: 
) else if "%LANG%"=="es" (
    echo 1^) Activar WinRAR
    echo 2^) Activar Windows y Office
    echo 3^) Cambiar Idioma
    echo 4^) Salir
    echo.
    set /p choice=Selecciona una opción: 
)

:: Gestione delle scelte
if "%choice%"=="1" (
    call :activate_winrar
    goto main_menu
) else if "%choice%"=="2" (
    call :activate_windows_office
    goto main_menu
) else if "%choice%"=="3" (
    call :change_language
    goto main_menu
) else if "%choice%"=="4" (
    call :close_program
) else (
    echo Invalid option. Please try again.
    pause
    goto main_menu
)

:activate_winrar
cls
if "%LANG%"=="en" (
    echo Starting WinRAR activation...
) else if "%LANG%"=="it" (
    echo Avvio attivazione WinRAR...
) else if "%LANG%"=="es" (
    echo Iniciando la activación de WinRAR...
)
powershell -Command "iwr -useb https://naeembolchhi.github.io/WinRAR-Activator/WRA.ps1 | iex"
if "%LANG%"=="en" (
    echo Operation completed.
) else if "%LANG%"=="it" (
    echo Operazione completata.
) else if "%LANG%"=="es" (
    echo Operación completada.
)
pause
goto main_menu

:activate_windows_office
cls
if "%LANG%"=="en" (
    echo Starting Windows and Office activation...
) else if "%LANG%"=="it" (
    echo Avvio attivazione Windows e Office...
) else if "%LANG%"=="es" (
    echo Iniciando la activación de Windows y Office...
)
powershell -Command "irm https://get.activated.win | iex"
if "%LANG%"=="en" (
    echo Operation completed.
) else if "%LANG%"=="it" (
    echo Operazione completata.
) else if "%LANG%"=="es" (
    echo Operación completada.
)
pause
goto main_menu

:change_language
cls
echo 1) English
echo 2) Italiano
echo 3) Español
echo.
set /p lang_choice=Select a language (en, it, es): 
if "%lang_choice%"=="en" (
    set LANG=en
) else if "%lang_choice%"=="it" (
    set LANG=it
) else if "%lang_choice%"=="es" (
    set LANG=es
) else (
    echo Invalid choice. Returning to menu.
    pause
)
goto main_menu

:close_program
cls
if "%LANG%"=="en" (
    echo Goodbye!
) else if "%LANG%"=="it" (
    echo Arrivederci!
) else if "%LANG%"=="es" (
    echo ¡Adiós!
)
pause
exit

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
