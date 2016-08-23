(gwmi win32_process -ComputerName phl107762 -Filter "name='acrobat.exe'").terminate()

ping www.hackthissite.org -f -l 1300
tracert hackthissite.org
nslookup yahoo.com