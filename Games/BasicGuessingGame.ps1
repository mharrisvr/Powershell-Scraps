Write-Output "We're going to play a guessing game! "

$Number = Get-Random -Minimum 1 -Maximum 100

$Guess = Read-Host -Prompt "`nWhat is your number?"

if ($Guess -eq $Number) {
    Write-Output "`nCongrats! You guessed the right answer!" 
} 

else {
    Write-Output "You're wrong"
}
