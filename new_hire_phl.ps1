$user = "CN=,OU=,OU=Users,OU=User Accounts,DC=,DC=,DC="
$oldOU = "CN=,OU=new,OU=User Accounts,DC=,DC=,DC="
$newOU = "OU=,OU=Users,OU=User Accounts,DC=,DC=,DC="
$group1 =  ""
$group2 =  ""
$group3 =  ""
$group4 =  ""
$group5 =  ""

#Move-QADObject $oldOU -NewParentContainer $newOU
#Add-QADGroupMember $group1 $user
#Add-QADGroupMember $group2 $user
#Add-QADGroupMember $group3 $user
#Add-QADGroupMember $group4 $user
#Add-QADGroupMember $group5 $user

#Set-QADUser $user -Description "" -HomeDirectory \\server)\ -HomeDrive u:



