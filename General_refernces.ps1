#$$PSVersionTable.PSVersion
#Get-QADGroupMember  |Select name | out-file '
#get-content ''| Add-QADGroupMember 
#Add-QADGroupMember -Identity 
#(gwmi win32_process -ComputerName  -Filter "name = 'communicator.exe'").terminate()
#Get-QADComputer  -IncludeAllProperties | Format-List| Out-File c:\
#Get-QADUser -LdapFilter "(Sid=)"
#Invoke-Command -ComputerName -ScriptBlock {Start-Service winrm}
#Get-QADGroupMember "" | select name |Out-File c:\
#help * -Parameter computername
#Get-WmiObject -Class Win32_Product -ComputerName  | Select-Object -Property name
gwmi win32reg_addremoveprograms -ComputerName  |select displayname
