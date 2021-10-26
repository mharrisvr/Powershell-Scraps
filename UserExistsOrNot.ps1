## Quickly checks list of user IDs and outputs whether they exist or not.. 
## Was needed to find discrepancies in User termination script

Import-Module ActiveDirectory

$employeeIDs = @('1','2','3','4','5','6','7','8','9','10')

$Users = foreach ($employeeID in $employeeIDs) {
    $User = Get-ADUser -filter ("EmployeeID -eq $employeeID")
    Get-ADUser $User.DistinguishedName -properties *
}

$Users | select name, employeeID, description
