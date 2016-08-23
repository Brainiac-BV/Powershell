#enter users hostname after ComputerName parameter before running
Get-Process communicator -ComputerName
#if multiple instances of the process running execute next step. Also input ComputerName
(gwmi win32_process -ComputerName  -Filter "name = 'communicator.exe'").terminate()