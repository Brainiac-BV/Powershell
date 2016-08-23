Function Get-LatestPatches {
<#
.Synopsis
   Get Latest Patches installed on a target computer
.DESCRIPTION
   Get Latest Patches installed on a target computer
   PARAMETER - ComputerName - TagetComputer
   WITHINLAST - Options are 7/10/15 Days

   When you launch the script, it will ask you to enter password.
   Enter username - as Aberdeen\Admin-SC, and your Admin password.

.EXAMPLE
   Get-LatestPatches -computerName "PHL12497"
.EXAMPLE
   Get-LatestPatches -computerName "PHL12497" | Export-Csv -NoTypeInformation -Append "PatchesInLast30days.csv"
.EXAMPLE
   Get-LatestPatches -computerName "PHL12497" -WithinLast 10 | Export-Csv -NoTypeInformation -Append "PatchesInLast10days.csv"
#>

[CmdletBinding()]
    Param
    (
        $computerName,
        [ValidateSet("7","10","15")] 
        [int]$WithinLast        
    )
Process {
    
    if ($WithinLast) 
    {
       $dateAfter = (Get-Date).AddDays(-$WithinLast)
    }
    else {
        $dateAfter = (Get-Date).AddDays(-30)
    }

    Get-HotFix -ComputerName $computerName | Where {$_.InstalledOn -gt $dateAfter} | select CSName,HotFixID,Caption,InstalledBy,InstalledOn
    }
}
Get-LatestPatches -computerName "PHL12497" | select -ExpandProperty Caption | foreach {
Start-Process iexplore $_
}