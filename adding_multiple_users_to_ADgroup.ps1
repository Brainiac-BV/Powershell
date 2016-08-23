$users = @('Samuel Missan','Brian Penhale','Ryan Nachsin','John Flanagan','Gail Baquilod','Madelyn Grajales')

foreach($user in $users) {
Add-QADGroupMember -Identity "CN=Cognos_Users Americas,OU=Philadelphia Market Street,OU=Groups,DC=aberdeen,DC=aberdeen-asset,DC=com" -Member $user}