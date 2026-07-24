@Echo Off
IF NOT EXIST "C:\ProcyonResults" mkdir "C:\ProcyonResults"
cd c:\
cd "C:\Program Files\UL\Procyon"

echo Setting brightness to 100%
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Get-CimInstance -Namespace root/WMI -ClassName WmiMonitorBrightnessMethods | ForEach-Object { Invoke-CimMethod -InputObject $_ -MethodName WmiSetBrightness -Arguments @{Timeout=1;Brightness=100} }"

start /WAIT "Running Procyon Battery Benchmark" .\ProcyonCmd.exe --definition=office_productivity_batterylife.def --systeminfo on --systeminfomonitor on --export-pdf C:\ProcyonResults\myBatteryResult1.procyon-result --log C:\Temp\ProcyonLogs\procyon.log

pause