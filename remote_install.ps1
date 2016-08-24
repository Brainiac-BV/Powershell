#$cmd = "c:\windows\system32\msiexec.exe"
#$path = ''
$script = {Invoke-Expression "msiexec.exe /i c:\ /quiet /norestart"}

Invoke-Command -ComputerName  -ScriptBlock $script

