try {
#insert script here -ErrorAction Stop
}
catch {
$errordata = @”
Computer = #change to variable of object being used
Exception = $($error[0].Exception)
ErrorId = $($error[0].FullyQualifiedErrorId)
“@

Write-Warning $errordata
}