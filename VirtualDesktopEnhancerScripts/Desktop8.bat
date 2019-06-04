
SET EXEName=powershell.exe
SET EXEFullPath=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

TASKLIST | FINDSTR /I "%EXEName%"
IF ERRORLEVEL 1 GOTO :StartScheduler
GOTO EOF

:StartScheduler
START "" "%EXEFullPath%"
GOTO EOF
