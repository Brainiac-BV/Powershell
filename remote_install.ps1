#$cmd = "c:\windows\system32\msiexec.exe"
#$path = "c:\temp\AcroRead.msi"
$script = {Invoke-Expression "msiexec.exe /i c:\temp\AcroRead.msi /quiet /norestart"}

Invoke-Command -ComputerName phl107763 -ScriptBlock $script

