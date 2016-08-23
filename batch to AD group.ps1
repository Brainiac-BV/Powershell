#Get-qaduser | where {$_.passwordlastset -eq $null}
#gwmi win32_loggedonuser -ComputerName phl1*
Invoke-Command -ComputerName |
Add-QADGroupMember "CN=Good Dynamic BYOD Americas Users,OU=Functional Groups,OU=Groups,DC=aberdeen,DC=aberdeen-asset,DC=com" -Member "aberdeen\"
get-content '.\Users\keith gray\My Documents\phase 6 BYOD deploy.txt'| Add-QADGroupMember "CN=Good Dynamic BYOD Americas Users,OU=Functional Groups,OU=Groups,DC=aberdeen,DC=aberdeen-asset,DC=com"
