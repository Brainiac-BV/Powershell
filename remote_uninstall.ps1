﻿$msiPath = "msiexec.exe"
$msiargs = "MsiExec.exe /X{349560CC-4E99-4248-8E2C-299DEE142EA8} /quiet /norestart"
Invoke-Command -ComputerName  -ScriptBlock {Start-Process -ArgumentList $using:msiargs}
#Start-Process $msiPath -ArgumentList $msiargs
#Invoke-Command -ComputerName  -ScriptBlock {Get-ExecutionPolicy}

MsiExec.exe /X{349560CC-4E99-4248-8E2C-299DEE142EA8}
