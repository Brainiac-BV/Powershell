#set variables for site locations
#Get-QADComputer -SearchRoot "OU=Philadelphia Market Street,OU=Desktop,OU=Computer Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com" | select name |Export-Csv c:\phlpcs2.csv
#Get-QADComputer -SearchRoot "OU=Toronto Bay Street,OU=Desktop,OU=Computer Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com" | select name |Out-File "c:\torpcs"
#Get-QADComputer -SearchRoot "OU=Sao Paulo Sao Gabriel,OU=Desktop,OU=Computer Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com" |select name | out-file c:\saopcs
$phl_pc = Get-Content C:\phlpcs2.csv
$tor_pc = Get-Content C:\torpcs.txt
$sao_pc = get-content C:\saopcs.txt
$output = 'C:\TOR_PC_infoz.csv'


#retrieve info and place in a variable

foreach($pc in $tor_pc) {
        #grab wmi info
        (gwmi -Class win32_computersystem -ComputerName $pc |Select-Object Model, Name, Username )|Export-Csv -Encoding Unicode $output -Append
        }

#Export-Csv -InputObject $PC_info -Path $output -Append


 

 