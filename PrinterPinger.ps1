$Printers = Get-Printer | select Name, portname
    
foreach ($Printer in $Printers) {
    ping $Printer.portname
}
