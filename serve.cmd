@echo off
rem Starts a local preview of the docs. Double-click this file or run .\serve in PowerShell.
rem The first run creates a .venv and installs the requirements.
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
  echo Creating virtual environment...
  py -m venv .venv || goto :error
)
".venv\Scripts\python.exe" -m pip install -q -r requirements.txt || goto :error
".venv\Scripts\python.exe" -m mkdocs serve --open
goto :eof
:error
echo.
echo Setup failed. Is Python installed? Try: py --version
pause
