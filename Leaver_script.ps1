$user_identity = ""
$bsys_email = "Business.Systems.Applications.US@aberdeen-asset.com"
$supportUS =  "support-us@aberdeen-asset.com"
$groups = @("people", "others")
Disable-ADAccount -
foreach($group in $groups) {
    Remove-ADGroupMember $group -Members  
    }

Send-MailMessage -From "keith.gray@aberdeen-asset.com" -To "keith.gray@aberdeen-asset.com" -Cc "River.vasquez@aberdeen-asset.com" -Subject "Test" -Body "Test"
Get-ADGroup "CN=Good Dynamics Americas Users,OU=Functional Groups,OU=Groups,DC=aberdeen,DC=aberdeen-asset,DC=com"
