#########################################
####            Spec Script         #####
#########################################


## Author         : Lewis
##  GitHub         : https://github.com/LPalmerr


Write-Output "Spec Script" >>c:\_SiA\"$env:computername".txt

# Create an sia drive on each pc to save the output to 

SET-LOCATION -PATH "c:"
CD\
MKDIR _SiA

## Output Logged in Users Username

Write-Output Username:$env:UserName >>c:\_SiA\"$env:computername".txt


## Output DOMAIN

Write-Output Domain:$env:UserDomain >>c:\_SiA\"$env:computername".txt

## 

Write-Output Display Name: >>C:\_SiA\"$env:computername".txt

##

whoami /fqdn >>C:\_SiA\"$env:computername".txt

##

systeminfo | findstr /c:"Host Name" /c:"Registered Owner" /c:"os name" /c:"System Model" /c:"Total Physical Memory" /c:"System Manufacturer" /c:"System Type" /c:"Domain" /c:"original Install Date" /c:"Product ID" /c:"Processor(s)" >>c:\_SiA\"$env:computername".txt

##

Write-Output SIAProcessor: >>c:\_SiA\"$env:computername".txt

## Output Full Processor Name 

wmic cpu get name >>C:\_SiA\"$env:computername".txt

## it does a thing?

Get-WmiObject win32_computersystem | Select-Object SystemSKUNumber >>C:\_SiA\"$env:computername".txt

## output for Database Pull

Write-Output SIAModelName: >>C:\_SiA\"$env:computername".txt

##

wmic csproduct get name >>C:\_SiA\"$env:computername".txt

## output for Database Pull

Write-Output SIASerialNumber: >>C:\_SiA\"$env:computername".txt

##

wmic bios get serialnumber >>C:\_SiA\"$env:computername".txt

##

wmic path softwarelicensingservice get OA3xOriginalProductKey >>C:\_SiA\"$env:computername".txt

##

wmic csproduct get name >>C:\_SiA\"$env:computername".txt

## output for Database Pull

Write-Output SIAHardDiskInfo: >>C:\_SiA\"$env:computername".txt

## display Harddrive info with Size in GB

Get-Disk | Format-Table -AutoSize Number,FriendlyName,@{Name="Size, Gb"; Expression={[int]($_.Size/1GB)}} >>C:\_SiA\"$env:computername".txt

## output for Database Pull

Write-Output SIACaseInfo: >>C:\_SiA\"$env:computername".txt

## Display Chassis type

Get-CimInstance -ClassName Win32_SystemEnclosure -Namespace 'root\CIMV2' -Property ChassisTypes >> C:\_SiA\"$env:computername".txt

## output for Database Pull

Write-output Monitor information: >>C:\_SiA\"$env:computername".txt

## Shows monitors that are plugged into the machine and lists the input type

Get-CimInstance -Namespace root\wmi -ClassName WmiMonitorBasicDisplayParams >>C:\_SiA\"$env:computername".txt

Get-Date >>C:\_SiA\"$env:computername".txt
Write-Output  ====================================================================== >>C:\_SiA\"$env:computername".txt
