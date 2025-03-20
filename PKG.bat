@echo off
setlocal enabledelayedexpansion

echo ==========================================
echo RTX Remix PKG Extractor
echo ==========================================
echo.
set /p "MOD_PATH=Enter the full path to the folder containing your PKG files (e.g., C:\Program Files (x86)\Steam\steamapps\common\Half-Life 2 RTX\rtx-remix\mods\hl2rtx): "

if not exist "%MOD_PATH%" (
    echo ERROR: The path you entered does not exist.
    echo Please check the path and try again.
    pause
    exit /b
)

rem Get the folder name from the path to use as the output folder
for %%F in ("%MOD_PATH%") do set "FOLDER_NAME=%%~nxF"

set "OUT_PATH=.\%FOLDER_NAME%"

echo Scanning for PKG files in %MOD_PATH%...
set "PKG_COUNT=0"

rem Find all mod_XX.pkg files in the folder
for %%F in ("%MOD_PATH%\mod_*.pkg") do (
    set /a PKG_COUNT+=1
    start "" /B .\RtxIoResourceExtractor.exe "%%F" --force -o "%OUT_PATH%"
)

if "%PKG_COUNT%"=="0" (
    echo No PKG files found in the specified folder.
    pause
    exit /b
)

echo Found %PKG_COUNT% PKG files. Extraction started.
echo Files will be extracted to: %OUT_PATH%
pause
