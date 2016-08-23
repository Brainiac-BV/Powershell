#Read-Host "whats your name?" | Write-Output |where {$_.Length -gt 5}
#[Microsoft.VisualBasic.VBCodeProvider]::InputBox('Enter a computer name','computer name', 'localhost')

ping 10.81.241.100