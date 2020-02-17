Install-Module -Name PSWindowsUpdate –Force
workflow RunScripts{
    parallel{
        #Windows Updates
        Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force
        Import-Module PSWindowsUpdate
        Get-WUlist
        Get-WindowsUpdate -install -acceptall -noreboot
        InlineScript{C:part2.ps1}
    }
}
start restart_taskMaker.bat