$ErrorActionPreference = "Stop"

$ProfileFolders = @(
    $(Join-Path $Home -ChildPath 'Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1')
    $(Join-Path $Home -ChildPath 'Documents\PowerShell\Microsoft.PowerShell_profile.ps1')
)

foreach ($Folder in $ProfileFolders) {
    if (!(Test-Path $Folder)) {
        New-Item -Path $Folder -ItemType File
    }
    Add-Content -Path $Folder -Value $('. ' + $(Join-Path $PSScriptRoot -ChildPath 'user_profile.ps1'))
}