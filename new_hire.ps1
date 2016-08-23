$user = "CN=Marcela Peixoto,OU=Philadelphia Market Street,OU=Users,OU=User Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com"
$user2 = "CN=Ivan Kleimann,OU=Philadelphia Market Street,OU=Users,OU=User Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com"
$newOU = "OU=Philadelphia Market Street,OU=Users,OU=User Accounts,DC=aberdeen,DC=aberdeen-asset,DC=com"
$group1 =  "remote users phl"
$group2 =  "outlook users us"
$group3 =  "EVSTDArchivingUS"
$group4 =  "xp users"
$group5 =  "philadelphia users"

#Move-QADObject $user -NewParentContainer $newOU
#Add-QADGroupMember $group1 $user
#Add-QADGroupMember $group2 $user
#Add-QADGroupMember $group3 $user
#Add-QADGroupMember $group4 $user
#Add-QADGroupMember $group5 $user

Set-QADUser $user2 -Description "Ivankleiman$" -HomeDirectory \\phlfile3\Ivankleiman$ -HomeDrive u:

