gwmi -ComputerName   -Namespace root\default -Class AAM_InstalledProducts |select DisplayName, version
gwmi -ComputerName  -Namespace root\default -Class AAM_InstalledProducts32 | select DisplayName, version

