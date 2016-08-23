#$$PSVersionTable.PSVersion
#Get-QADGroupMember marketing-US |Select name | out-file 'C:\Users\keith gray\My Documents\Marketing-US.txt'
#get-content 'c:\Users\keith gray\My Documents\CORP-P9.txt'| Add-QADGroupMember "CN=Good Dynamics Americas Users,OU=Functional Groups,OU=Groups,DC=aberdeen,DC=aberdeen-asset,DC=com"
#Add-QADGroupMember "CN=Good Dynamic BYOD Americas Users,OU=Functional Groups,OU=Groups,DC=aberdeen,DC=aberdeen-asset,DC=com" -Member "aberdeen\Denis Odonoghue"
#(gwmi win32_process -ComputerName phl12478  -Filter "name = 'communicator.exe'").terminate()
#Get-QADComputer phl13701 -IncludeAllProperties | Format-List| Out-File c:\stevepcadinfo.txt
#Get-QADUser -LdapFilter "(Sid=S-1-5-21-306867686-315641515-5522801-80979)"
#Invoke-Command -ComputerName phl10441 -ScriptBlock {Start-Service winrm}
#Get-QADGroupMember "IBD Philadelphia Read Only" | select name |Out-File c:\IBD-Philadelphia-Read-access.txt
#help * -Parameter computername
#Get-WmiObject -Class Win32_Product -ComputerName phl12432 | Select-Object -Property name
gwmi win32reg_addremoveprograms -ComputerName phl10425 |select displayname