#set variables for path, admin account, etc
$one_note_path = "/a \\phlbuild01\software\microsoft\Office\Office 2010 Professional Plus\OneNote.en-us\OneNoteMUI.msi /quiet /norestart"
$computers = Get-Content C:\BSONI.txt
$msi = "msiexec.exe"

$onenote = '\\phlbuild01\software\microsoft\Office\Office 2010 Professional Plus\OneNote.en-us\OneNoteMUI.msi'

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
