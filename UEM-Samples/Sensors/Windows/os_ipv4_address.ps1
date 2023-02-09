# Description: Returns the system's IPv4 Address
# Execution Context: SYSTEM
# Execution Architecture: EITHER_64BIT_OR_32BIT
# Return Type: STRING

$IPv4 = (Get-WmiObject win32_Networkadapterconfiguration | Where-Object{$_.ipaddress -notlike $null}).IPaddress | Select-Object -First 1
Return $IPv4 

