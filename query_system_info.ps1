#set variables for site locations
#Get-QADComputer -SearchRoot "OU=,OU=,OU=,DC=,DC=,DC=" | select name |Export-Csv c:\.csv
#Get-QADComputer -SearchRoot "OU=,OU=,OU=,DC=,DC=,DC=" | select name |Out-File "c:\.txt"
#Get-QADComputer -SearchRoot "OU=,OU=,OU=,DC=,DC=,DC=" |select name | out-file c:\.txt
$phl_pc = Get-Content C:\.csv
$tor_pc = Get-Content C:\.txt
$sao_pc = get-content C:\.txt
$output = 'C:\.csv'


#retrieve info and place in a variable

foreach($pc in $tor_pc) {
        #grab wmi info
        (gwmi -Class win32_computersystem -ComputerName $pc |Select-Object Model, Name, Username )|Export-Csv -Encoding Unicode $output -Append
        }

#Export-Csv -InputObject $PC_info -Path $output -Append


 

 
