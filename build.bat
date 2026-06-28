@echo off
REM Build script for Gestion Scolaire Pro Plus

echo ============================================
echo Gestion Scolaire Pro Plus - Compilation EXE
echo ============================================
echo.

echo [1/4] Vérification de Node.js...
node --version
npm --version
echo.

echo [2/4] Installation des dépendances...
call npm install
if errorlevel 1 (
    echo Erreur lors de l'installation
    exit /b 1
)
echo.

echo [3/4] Compilation en EXE...
call npm run dist:win
if errorlevel 1 (
    echo Erreur lors de la compilation
    exit /b 1
)
echo.

echo [4/4] Compilation terminée !
echo.
echo Les fichiers EXE sont disponibles dans: dist\
dir dist\*.exe
echo.
pause
