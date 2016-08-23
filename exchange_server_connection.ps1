$ExchCHTserver = 'phlcht01'
$exchSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://$ExchCHTserver/PowerShell/ -Authentication Kerberos 
Import-PSSession $exchSession -AllowClobber