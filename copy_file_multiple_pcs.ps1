#Get-QADUser "" |select password*
$cuteFTP = '\\'
$targetPC = @('', '', '', '', '', '', '', '', '', '')

foreach($t in $targetPC) {
    Copy-Item $cuteFTP  -Destination $t
    }

ls
