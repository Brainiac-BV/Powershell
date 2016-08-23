$regloc = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
$regloc64 = "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall"

Invoke-Command -ComputerName phl10621 -ScriptBlock {Get-ChildItem $using:regloc64 -Recurse|sort -Descending |ForEach-Object -Process {$_.GetValue("DisplayName"), $_.GETVAlue("uninstall string")}| Format-Table}