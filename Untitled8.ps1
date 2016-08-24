#set variables for path, admin account, etc
$one_note_path = "/a \\\software\microsoft\Office\Office 2010 Professional Plus\OneNote.en-us\OneNoteMUI.msi /quiet /norestart"
$computers = Get-Content ""
$msi = "msiexec.exe"

#start install
#foreach($wkst in $computers) {
    Invoke-Command -ComputerName  -ScriptBlock {
        Start-Process $args[0] -ArgumentList $args[1]} -ArgumentList $msi, $one_note_path
 
