# Chocolatey profile
Write-Host 'Loading Chocolatey'
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
	Import-Module "$ChocolateyProfile"
}

import-module Terminal-Icons
Write-Host 'Loading posh-git'
Import-Module posh-git

# Set Promt
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n$([DateTime]::now.ToString("yyyy-MM-dd HH:mm"))'
$GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 0x808080
$GitPromptSettings.DefaultPromptPath.ForegroundColor = 0xFFA500

# PSReadLine
Import-Module PSReadLine
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History