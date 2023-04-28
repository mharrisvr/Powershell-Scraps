# The purpose of this is to get all of the AD accounts with term dates in the next month (From the date run). 
# Written 4/28/2023

$termDate = Get-Date
$oneMonthOut = $termDate.Date.AddMonths(1)

Get-ADUser -filter "AccountExpirationDate -lt '$oneMonthOut'" -properties * | select name, manager, mail, description
