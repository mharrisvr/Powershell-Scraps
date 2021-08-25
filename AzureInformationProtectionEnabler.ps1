$Cred = Get-Credential

Install-Module -Name AipService
Connect-AipService $Cred
Enable-AipService
