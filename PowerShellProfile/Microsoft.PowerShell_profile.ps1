# Chocolatey profile
Write-Host 'Loading Chocolatey'
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
	Import-Module "$ChocolateyProfile"
}

Write-Host 'Loading posh-git'
Import-Module posh-git

Write-Host 'Loading oh-my-posh'
Import-Module oh-my-posh

Write-Host 'Set Theme'
Set-Theme Paradox