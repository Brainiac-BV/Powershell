(gwmi win32_process -ComputerName  -Filter "name='acrobat.exe'").terminate()

ping www.hackthissite.org -f -l 1300
tracert hackthissite.org
nslookup yahoo.com
