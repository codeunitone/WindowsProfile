# Chocolatey profile
Write-Host 'Loading Chocolatey'
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
	Import-Module "$ChocolateyProfile"
}

Write-Host 'Loading posh-git'
Import-Module posh-git

# Set Promt
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n$([DateTime]::now.ToString("YYYY-MM-dd HH:mm:ss"))'
$GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 0x808080
$GitPromptSettings.DefaultPromptPath.ForegroundColor = 0xFFA500