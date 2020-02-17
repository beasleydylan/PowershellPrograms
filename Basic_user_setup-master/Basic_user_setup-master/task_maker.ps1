$Action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument '-NonInteractive -NoLogo -NoProfile -File "C:\solaceScript\updates.ps1"'
$Trigger = New-ScheduledTaskTrigger -Once -AtLogOn
$Settings = New-ScheduledTaskSettingsSet
$Task = New-ScheduledTask -Action $Action -Trigger $Trigger -Settings $Settings