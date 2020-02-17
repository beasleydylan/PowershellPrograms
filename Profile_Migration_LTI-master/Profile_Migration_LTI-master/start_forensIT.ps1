$url = "https://www.forensit.com/Downloads/Profwiz.msi"
$output = "$PSScriptRoot\Profwiz.msi"
$start_time = Get-Date

Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
#OR
Start-BitsTransfer -Source $url -Destination $output -Asynchronous
cd C:\
Invoke-Item Profwiz.msi