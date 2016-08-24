#Get-qaduser | where {$_.passwordlastset -eq $null}
#gwmi win32_loggedonuser -ComputerName 
Invoke-Command -ComputerName |
Add-QADGroupMember "" -Member ""
get-content ''| Add-QADGroupMember ""
