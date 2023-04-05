#This just maps a network drive for the local user (Didn't require authentication on an AD domain) 
#Not really useful to use the variables when mapping one drive, but :-(

$ShareName = "Whatever you want it to be" 
$FolderPath = "Enter Folder path"

New-PSDrive -Persist -Name "$ShareName" -PSProvider "FileSystem" -Root "$FolderPath"
