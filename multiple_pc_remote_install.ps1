#set variables for path, admin account, etc
$one_note_path = "/a (path) /quiet /norestart"
$computers = Get-Content C:\.txt
$msi = "msiexec.exe"

$onenote = '(path)'

#start install
foreach ($wkst in $computers) {
    $wkst = $wkst.Trim()
    Write-Output $wkst
    #gwmi -ComputerName $wkst -Class Win32_ComputerSystem
    Copy-Item $onenote -Destination \\$wkst\c$\temp
    Invoke-Command -ComputerName $wkst -ScriptBlock {
        & "cmd /c msiexec.exe c:\temp\OneNoteMUI.msi /quiet /norestart"
        #Start-Process $args[0] -ArgumentList $args[]
        } 
        #-ArgumentList $msi,$one_note_path

}
