@echo off
SET PATH=;C:/Program Files/OpenModelica1.22.2-64bit/bin/;%PATH%;
SET ERRORLEVEL=
CALL "%CD%/LittlePieces.exe" %*
SET RESULT=%ERRORLEVEL%

EXIT /b %RESULT%
