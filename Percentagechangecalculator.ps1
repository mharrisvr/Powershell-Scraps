#Quick function to find the different values over a certain number years at a set rate of change.. 
#Probably useful for something.. but only works with whole number percent changes for now.. will update and fix this to use more than 2 decimal plac

#Initialize the variables
[int]$Base = Read-Host -prompt "Enter your base number"
[int]$Years = Read-Host -Prompt "Enter the number of Years you want to calculate for"
[int]$PercentageBoost = Read-Host "Enter the percentage of change"
[math]::Round(([int]$PercentageBoost/100), 3) #Still does not do the calculation for more than 2 decimal places... so something to fix

Write-Host #Spaces a line between input and output. 

for ($Year = 1; $Year -le $Years; $Year++) {
    Write-Host "Year $Year total is: $Base"
    $NewBase = ($Base * (1+$prctboost))

    $Base = $NewBase
    
}
