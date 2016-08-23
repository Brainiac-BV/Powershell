$msiPath = "msiexec.exe"
$msiargs = "/X {88888888-FFFF-0000-FFFF-000055551111} /quiet /norestart"
Invoke-Command -ComputerName phl12432 -Credential aberdeen\admin-kg1 -ScriptBlock {Start-Process -FilePath $args[0] -ArgumentList "/X {88888888-FFFF-0000-FFFF-000055551111} /quiet /norestart"} -ArgumentList $msiPath