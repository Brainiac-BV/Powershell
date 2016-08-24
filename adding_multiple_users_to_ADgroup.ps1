$users = @('')

foreach($user in $users) {
Add-QADGroupMember -Identity "" -Member $user}
