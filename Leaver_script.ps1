$user_identity = ""
$bsys_email = ""
$supportUS =  "
$groups = @("people", "others")
Disable-ADAccount -
foreach($group in $groups) {
    Remove-ADGroupMember $group -Members  
    }

Send-MailMessage -From "" -To "" -Cc "" -Subject "Test" -Body "Test"
Get-ADGroup -Identity ""
