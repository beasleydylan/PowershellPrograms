Connect-AzureAD -Confirm
$restart = Read-host "Are you ready to restart? 'n Type [y] for yes or [n] for no: "
$restart = $restart.toLower()
$restart = $restart.substring(0,1)
If ($restart.equals('y')){
    Shutdown -r -t 005
}