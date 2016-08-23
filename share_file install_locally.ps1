$one_note_path = "/a \\phlbuild01\software\microsoft\Office\Office 2010 Professional Plus\OneNote.en-us\OneNoteMUI.msi /quiet /norestart"
$msi = "msiexec.exe"

Start-Process $msi -ArgumentList $one_note_path 