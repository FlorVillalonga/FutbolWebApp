@echo off
setlocal

cd /d "C:\DataFlex Projects\futbolWP"

echo Deteniendo DataFlex Web Application Server...
net stop DFWAS250

echo Cerrando procesos WebApp.exe que hayan quedado abiertos...
taskkill /F /IM WebApp.exe >nul 2>nul

echo Compilando WebApp.src usando el workspace futbolwp.sws...
"C:\Program Files\DataFlex 25.0\Bin64\DfCompConsole.exe" "AppSrc\WebApp.src" -x "C:\DataFlex Projects\futbolWP\futbolwp.sws" -c

if errorlevel 1 (
    echo.
    echo ERROR: La compilacion fallo. Revisa el mensaje anterior.
    echo Reiniciando el servicio igualmente...
    net start DFWAS250
    pause
    exit /b 1
)

echo Reiniciando DataFlex Web Application Server...
net start DFWAS250

echo.
echo Listo. Abre la app y refresca el navegador con Ctrl+F5.
pause
