@Echo Off
IF NOT EXIST "C:\ProcyonResults" mkdir "C:\ProcyonResults"
cd c:\
cd "C:\Program Files\UL\Procyon"

start /WAIT "Running Procyon Battery Benchmark" .\ProcyonCmd.exe --definition=office_productivity_batterylife.def --systeminfo on --systeminfomonitor on --export-pdf C:\ProcyonResults\myBatteryResult2.procyon-result --log C:\Temp\ProcyonLogs\procyon.log

pause