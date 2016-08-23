#Get-QADUser "jim babson" |select password*
$cuteFTP = '\\phlbuild01\Software\CuteFTP\2016\cuteftp.exe'
$targetPC = @('\\phl10444\C$\Temp', '\\phl10408\C$\Temp', '\\phl10832\C$\Temp', '\\phl10470\C$\Temp', '\\phl12559\C$\Temp', '\\phl10428\C$\Temp', '\\phl10443\C$\Temp', '\\phl10680\C$\Temp', '\\phl10412\C$\Temp', '\\phl10887\C$\Temp')

foreach($t in $targetPC) {
    Copy-Item $cuteFTP  -Destination $t
    }

ls