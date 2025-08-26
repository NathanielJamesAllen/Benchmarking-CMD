@Echo Off
IF NOT EXIST "C:\ProcyonResults" mkdir "C:\ProcyonResults"
cd c:\
cd "C:\Program Files\UL\Procyon"

start /WAIT "Running Procyon Office Benchmark" .\ProcyonCmd.exe --definition=office_productivity.def --loop=2 --systeminfo on --systeminfomonitor on --export-pdf C:\ProcyonResults\myOfficeResult.procyon-result --log C:\Temp\ProcyonLogs\procyon.log

pause