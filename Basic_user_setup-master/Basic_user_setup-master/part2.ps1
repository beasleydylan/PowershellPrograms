#Turns off windows firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

#Set UAC to "No Notify"
Set-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Value "0" 

#PowerSettings
Powercfg /Change monitor-timeout-ac 0
Powercfg /Change monitor-timeout-dc 240
Powercfg /Change standby-timeout-ac 0
Powercfg /Change standby-timeout-dc 240
& "powercfg" -x disk-timeout-ac 0
& "powercfg" -x disk-timeout-dc 0

#Enable System Restore
Enable-ComputerRestore -Drive "C:\"

#windows activation confirmation
slmgr /xpr

#delete bloatware NEED MORE INFO
DISM /Online /Remove-ProvisionedAppxPackage /PackageName:PACKAGENAME

#Download Chrome
$Path = $env:TEMP; $Installer = "chrome_installer.exe"; 
Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer; 
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; 
Remove-Item $Path\$Installer

#Download Firefox
$Path = $env:TEMP; $Installer = "firefox.exe"; 
Invoke-WebRequest "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US" -OutFile $Path\$Installer; 
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; 
Remove-Item $Path\$Installer

#Adobe Reader Download
$Path = $env:TEMP; $Installer = "AcroRdrDC1502320053_en_US.exe";
Invoke-WebRequest "http://ardownload.adobe.com/pub/adobe/reader/win/AcrobatDC/1502320053/AcroRdrDC1502320053_en_US.exe" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer
