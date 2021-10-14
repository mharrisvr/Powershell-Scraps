# Grabs info on Wifi Card, MAC Address, and Driver version and writes it to a txt file.. 
# One of the few cases where it is faster to go to Settings > Network > Wifi > Hardware properties to get info.. 

Get-NetAdapter -Name "Wi-Fi" | select Name, interfaceDescription, MacAddress | Out-File C:\users\%username%\desktop\test1.txt
Get-WmiObject Win32_PnPSignedDriver | select DeviceName, Manufacturer, DriverVersion | Add-content C:\users\%username%\desktop\test1.txt 
