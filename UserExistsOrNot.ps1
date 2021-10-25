## Quickly checks list of user IDs and outputs whether they exist or not.. 
## Was needed to find discrepancies in User termination script

Import-Module ActiveDirectory

$employeeIDs = @()

$Users = foreach ($employeeID in $employeeIDs) {
    $User = Get-ADUser -filter ("EmployeeID -eq $employeeID")
    Get-ADUser $User.DistinguishedName -properties *
}

$Users | select name, employeeID, description
