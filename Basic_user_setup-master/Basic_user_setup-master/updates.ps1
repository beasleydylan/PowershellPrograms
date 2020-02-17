Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force
        Import-Module PSWindowsUpdate
        Get-WUlist
        Get-WindowsUpdate -install -acceptall -noreboot