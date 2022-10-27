Write-Output Specification Script.
CD\
MKDIR _SiA
Set-Location _SiA
Write-Output Username:$env:UserName >>C:\_SiA\"$env:computername".txt
Write-Output Domain:$env:UserDomain >>C:\_SiA\"$env:computername".txt
Write-Output Display Name:>>C:\_SiA\"$env:computername".txt
whoami /fqdn >>C:\_SiA\"$env:computername".txt
systeminfo|findstr /i /c:"Host Name" /c:"Registered Owner" /c:"os name" /c:"System Model" /c:"Total Physical Memory" /c:"System Manufacturer" /c:"System Type" /c:"Domain" /c:"original Install Date" /c:"Product ID" /c:"Processor(s)" >>C:\_SiA\"$env:computername".txt
Write-Output SIAProcessor: >>C:\_SiA\"$env:computername".txt
wmic cpu get name >>C:\_SiA\"$env:computername".txt
Get-WmiObject win32_computersystem | Select-Object SystemSKUNumber >>C:\_SiA\"$env:computername".txt
Write-Output SIAModelName: >>C:\_SiA\"$env:computername".txt
wmic csproduct get name >>C:\_SiA\"$env:computername".txt
Write-Output SIASerialNumber: >>C:\_SiA\"$env:computername".txt
wmic bios get serialnumber >>C:\_SiA\"$env:computername".txt
wmic path softwarelicensingservice get OA3xOriginalProductKey >>C:\_SiA\"$env:computername".txt
wmic csproduct get name >>C:\_SiA\"$env:computername".txt
Write-Output SIAHardDiskInfo: >>C:\_SiA\"$env:computername".txt
Get-PhysicalDisk | Format-Table -AutoSize >>C:\_SiA\"$env:computername".txt
Write-Output SIACaseInfo: >>C:\_SiA\"$env:computername".txt
Get-CimInstance -ClassName Win32_SystemEnclosure -Namespace 'root\CIMV2' -Property ChassisTypes >>C:\_SiA\"$env:computername".txt
Get-CimInstance -ClassName Win32_SystemEnclosure -Namespace 'root\CIMV2'>>C:\_SiA\"$env:computername".txt