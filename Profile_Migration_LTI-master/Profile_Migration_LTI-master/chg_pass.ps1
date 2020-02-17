net user
$account = Read-host -Prompt "Which account are you looking to change the password to?"
$password = Read-host -Prompt "Type in new password here: " -AsSecureString
Set-LocalUser -name $account -password $password
Add-Computer -WorkgroupName "WorkGroup"
restart = Read-host "Are you ready to restart? 'n Type [y] for yes or [n] for no: "
$restart = $restart.toLower()
$restart = $restart.substring(0,1)
If ($restart.equals('y')){
    Shutdown -r -t 005
}