
SET EXEName=scalc.exe
SET EXEFullPath=C:\Program Files (x86)\OpenOffice 4\program\scalc.exe

TASKLIST | FINDSTR /I "%EXEName%"
IF ERRORLEVEL 1 GOTO :StartScheduler
GOTO EOF

:StartScheduler
START "" "%EXEFullPath%"
GOTO EOF
