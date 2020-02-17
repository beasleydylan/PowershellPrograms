# Add_VPN_Connection
This repo contains programs which will run a basic setup for a PC. 
First start off by running the solaceScript.ps1 file via admin. 
This script will install PSWindowsUpdates then will run updates and the part2.ps1 script alongside each other. 
After these are complete the restart_taskManager.bat file will run which then runs the task_manager.ps1 file. 
The task_manager.ps1 script will make a task in task scheduler which runs the updates.ps1 script upon next logon. 
