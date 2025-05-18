@echo off
title Otimizador de Serviços do Windows - Por Guilherme Magno
color 0A

:: Verifica se está sendo executado como administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Este script precisa ser executado como Administrador.
    pause
    exit /b
)

echo =====================================
echo Desativando serviços desnecessários...
echo =====================================

:: Desativa Telemetria
echo [1] Desativando DiagTrack...
net stop DiagTrack >nul 2>&1
sc config DiagTrack start= disabled >nul 2>&1

:: Desativa SysMain
echo [2] Desativando SysMain (Superfetch)...
net stop SysMain >nul 2>&1
sc config SysMain start= disabled >nul 2>&1

:: Desativa WSearch
echo [3] Desativando WSearch (Indexação)...
net stop WSearch >nul 2>&1
sc config WSearch start= disabled >nul 2>&1

:: Desativa OneDrive Update
echo [4] Desativando OneDrive Updater...
sc stop OneSyncSvc >nul 2>&1
sc config OneSyncSvc start= disabled >nul 2>&1

:: Desativa Xbox Services
echo [5] Desativando XboxGipSvc...
net stop XboxGipSvc >nul 2>&1
sc config XboxGipSvc start= disabled >nul 2>&1

:: Desativa WalletService
echo [6] Desativando WalletService...
net stop WalletService >nul 2>&1
sc config WalletService start= disabled >nul 2>&1

:: Fax
echo [7] Desativando serviço de FAX...
net stop Fax >nul 2>&1
sc config Fax start= disabled >nul 2>&1

:: Não desativar sppsvc para evitar problemas com ativação
echo [!] sppsvc (Proteção de Software) não será alterado para manter ativação do sistema.

:: Limpeza de arquivos temporários
echo [8] Limpando arquivos temporários...
del /f /s /q %TEMP%\*.* >nul 2>&1

echo.
echo Finalizado. Reinicie o computador para aplicar todas as alterações.
pause
