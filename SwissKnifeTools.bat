@echo off
:: Imposta la lingua predefinita (inglese)
set LANG=en

title SwissKnifeTools - by GioeleGregorini
chcp 65001

:main_menu
cls
call :banner

:: Mostra il menu in base alla lingua selezionata
if "%LANG%"=="en" (
    echo 1^) Activate WinRAR - ADMIN
    echo 2^) Activate Windows and Office - ADMIN
    echo 3^) Install Spicify
    echo 4^) Change Language
    echo 5^) Exit
    echo.
    set /p choice=Select an option: 
) else if "%LANG%"=="it" (
    echo 1^) Attiva WinRAR - AMMINISTRATORE
    echo 2^) Attiva Windows e Office - AMMINISTRATORE
    echo 3^) Installa Spicify
    echo 4^) Cambia Lingua
    echo 5^) Esci
    echo.
    set /p choice=Seleziona un'opzione: 
) else if "%LANG%"=="es" (
    echo 1^) Activar WinRAR - ADMINISTRADOR
    echo 2^) Activar Windows y Office - ADMINISTRADOR
    echo 3^) Instalar Spicify
    echo 4^) Cambiar Idioma
    echo 5^) Salir
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
    call :install_spicify
    goto main_menu
) else if "%choice%"=="4" (
    call :change_language
    goto main_menu
) else if "%choice%"=="5" (
    call :close_program
) else (
    echo Invalid option. Please try again.
    pause
    goto main_menu
)

:: Funzione per attivare WinRAR (richiede amministratore)
:activate_winrar
cls
if "%LANG%"=="en" (
    echo Starting WinRAR activation...
) else if "%LANG%"=="it" (
    echo Avvio attivazione WinRAR...
) else if "%LANG%"=="es" (
    echo Iniciando la activación de WinRAR...
)
:: Avvia WinRAR con privilegi di amministratore
powershell -Command "Start-Process powershell -ArgumentList 'iwr -useb https://naeembolchhi.github.io/WinRAR-Activator/WRA.ps1 | iex' -Verb RunAs"
if %errorlevel% neq 0 (
    echo Error during WinRAR activation.
    pause
    goto main_menu
)
if "%LANG%"=="en" (
    echo Operation completed.
) else if "%LANG%"=="it" (
    echo Operazione completata.
) else if "%LANG%"=="es" (
    echo Operación completada.
)
pause
goto main_menu

:: Funzione per installare Spicify (non richiede amministratore)
:install_spicify
cls
if "%LANG%"=="en" (
    echo Starting Spicify install...
) else if "%LANG%"=="it" (
    echo Avvio installazione Spicify...
) else if "%LANG%"=="es" (
    echo Iniciando la instalación de Spicify...
)

:: Esegui l'installazione di Spicify senza permessi di amministratore
powershell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex"
if %errorlevel% neq 0 (
    echo Error during Spicify installation.
    pause
    goto main_menu
)
if "%LANG%"=="en" (
    echo Spicify installed.
) else if "%LANG%"=="it" (
    echo Spicify installato.
) else if "%LANG%"=="es" (
    echo Spicify instalado.
)

pause
goto main_menu

:: Funzione per attivare Windows e Office (richiede amministratore)
:activate_windows_office
cls
if "%LANG%"=="en" (
    echo Starting Windows and Office activation...
) else if "%LANG%"=="it" (
    echo Avvio attivazione Windows e Office...
) else if "%LANG%"=="es" (
    echo Iniciando la activación de Windows y Office...
)
:: Avvia Windows e Office con privilegi di amministratore
powershell -Command "Start-Process powershell -ArgumentList 'irm https://get.activated.win | iex' -Verb RunAs"
if %errorlevel% neq 0 (
    echo Error during Windows and Office activation.
    pause
    goto main_menu
)
if "%LANG%"=="en" (
    echo Operation completed.
) else if "%LANG%"=="it" (
    echo Operazione completata.
) else if "%LANG%"=="es" (
    echo Operación completada.
)
pause
goto main_menu

:: Funzione per cambiare la lingua
:change_language
cls
echo 1) English
echo 2) Italiano
echo 3) Español
echo.
set /p lang_choice=Select a language: 
if "%lang_choice%"=="1" (
    set LANG=en
) else if "%lang_choice%"=="2" (
    set LANG=it
) else if "%lang_choice%"=="3" (
    set LANG=es
) else (
    echo Invalid choice. Returning to menu.
    pause
)
goto main_menu

:: Funzione per chiudere il programma
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

:: Banner del programma
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
