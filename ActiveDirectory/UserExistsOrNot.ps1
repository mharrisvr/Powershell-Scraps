## Quickly checks list of user IDs and outputs whether they exist or not.. 
## Was needed to find discrepancies in User termination script

Import-Module ActiveDirectory

$employeeIDs = @('1','2','3','4','5','6','7','8','9','10')

Write-Host "`n....Checking EmployeeIDs`n" -ForegroundColor Green

$Users = foreach ($employeeID in $employeeIDs) {
    $User = $(try {Get-ADUser -filter ("EmployeeID -eq $employeeID") } catch {$null})
    if ($User -ne $Null) {
        Get-ADUser $User.DistinguishedName -properties *
        }
    else {
        Write-Host "User with $employeeID does not exist"
        }

$Users | select name, employeeID, description

# This part just used for testing to verify # Of users that were checked VS # that actually existed
$employeeIDs.count
$Users.count 
