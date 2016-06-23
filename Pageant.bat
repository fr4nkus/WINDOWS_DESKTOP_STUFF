@ECHO OFF

setlocal EnableDelayedExpansion

REM **** TRAVEL TO THE KEY DIRECTORY ****
SET KEY_PATH="\\TOUCHSCREEN\Users\Frank\Documents\ssh_keys"
PUSHD %KEY_PATH%

REM **** GATHER THE KEY FILES ****
SET KEY_FILES= 
FOR /F "delims=" %%i IN ('DIR /B *.ppk') DO (set KEY_FILES=!KEY_FILES! %%%i)

REM **** EXECUTE THE COMMAND! ****
SET PAGEANT_PATH="C:\Program Files (x86)\PuTTY\pageant.exe"
START "" %PAGEANT_PATH% %KEY_FILES%