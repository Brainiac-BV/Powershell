$one_note_path = "/a \\(server)\\OneNote.en-us\OneNoteMUI.msi /quiet /norestart"
$msi = "msiexec.exe"

Start-Process $msi -ArgumentList $one_note_path 
