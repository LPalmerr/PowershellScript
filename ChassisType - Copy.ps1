Function IsLaptop
{
    $isLaptop = $false
    if(Get-WmiObject -Class win32_systemenclosure | 
        Where-Object { $_.chassistypes -eq 8 -or $_.chassistypes -eq 9 -or $_.chassistypes -eq 10 -or $_.chassistypes -eq 14 -or $_.chassistypes -eq 30})
        { $isLaptop = $true }
    Return $isLaptop
}

If (IsLaptop) {"This is a laptop"} Else {"This is not a laptop."}