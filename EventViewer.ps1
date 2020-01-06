# Event ID 6005 (alternate): “The event log service was started.” This is synonymous to system startup.
# Event ID 6006 (alternate): “The event log service was stopped.” This is synonymous to system shutdown.
# Event ID 6008 (alternate): "The previous system shutdown was unexpected." Records that the system started after it was not shut down properly.
# Event ID 6009 (alternate): Indicates the Windows product name, version, build number, service pack number, and operating system type detected at boot time.
# https://serverfault.com/questions/702828/windows-server-restart-shutdown-history


$sd = 6005, 6006, 6008, 6009, 1074, 1076
Get-Eventlog -LogName System | Where-Object {$_.EventID -in $sd}

## To CSV
Get-Eventlog -LogName System | Where-Object {$_.EventID -in $sd} | Out-File -FilePath c:\Wonderware\Logs.txt
