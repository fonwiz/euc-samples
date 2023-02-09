# Description: Returns the system's IPv6 Address
# Execution Context: SYSTEM
# Execution Architecture: EITHER_64BIT_OR_32BIT
# Return Type: STRING

$IPv6 = (Get-WmiObject win32_Networkadapterconfiguration | Where-Object{$_.ipaddress -notlike $null}).IPaddress[3]
Return $IPv6 

