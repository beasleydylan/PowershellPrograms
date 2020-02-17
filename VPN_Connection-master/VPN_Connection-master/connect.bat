@echo off
set /p user="Enter username: "
@echo off
set /p pass="Enter password: "

rasdial "Name of VPN connection" %user% %pass%
