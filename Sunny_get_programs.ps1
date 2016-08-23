gwmi -ComputerName phl0441  -Namespace root\default -Class AAM_InstalledProducts |select DisplayName, version
gwmi -ComputerName sao12550 -Namespace root\default -Class AAM_InstalledProducts32 | select DisplayName, version

