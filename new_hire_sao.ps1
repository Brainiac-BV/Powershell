$user = "CN=,OU=Philadelphia Market Street,OU=Users,OU=User Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com"
$oldOU = "CN=,OU=new,OU=User Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com"
$newOU = "OU=Philadelphia Market Street,OU=Users,OU=User Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com"
$group1 =  "remote users sao"
$group2 =  "outlook users us"
$group3 =  "EVSTDArchivingUS"
$group4 =  "xp users"
$group5 =  "sao paulo users"

#Move-QADObject $oldOU -NewParentContainer $newOU
#Add-QADGroupMember $group1 $user
#Add-QADGroupMember $group2 $user
#Add-QADGroupMember $group3 $user
#Add-QADGroupMember $group4 $user
#Add-QADGroupMember $group5 $user
