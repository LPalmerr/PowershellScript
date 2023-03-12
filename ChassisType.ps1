
function Test-IsLaptop {
    $HardwareType = (Get-WmiObject -Class Win32_ComputerSystem -Property PCSystemType).PCSystemType
    # https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-computersystem
    # Mobile = 2
    $HardwareType -eq 2
}
 
if (Test-IsLaptop) {
  Write-Host "$Env:ComputerName is a Laptop"
  Add-AppxPackage -Path "$PSScriptRoot\28671Petrroll.PowerPlanSwitcher_0.4.4.0_x86__ge82akyxbc7z4.Appx" >>C:\_SiA\"$env:computername".txt
} else {
  Write-Host "$Env:ComputerName is a Desktop"
}
