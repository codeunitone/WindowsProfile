# Terminal-Icons
Import-module Terminal-Icons

# Posh-Git
Import-Module Posh-Git
$env:POSH_GIT_ENABLED = $true

# PSReadLine
Import-Module PSReadLine
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History

# Oh-My-PoSh
$omp_config = $(Join-Path $PSScriptRoot -ChildPath 'oh-my-posh\codeunitone.omp.json')
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Aliases
Set-Alias -name vim -Value nvim
Set-Alias -Name ads -Value $(Join-Path $HOME -ChildPath 'scoop\apps\azuredatastudio\current\azuredatastudio.exe')

# Functions
function start-notes {
    code "$HOME\Resilio Sync\Documents\Notes"
}

function start-dendron {
    code "$HOME\Resilio Sync\Documents\dendron"
}

function UpdateRepos {
    Get-Childitem $HOME/Repositories | foreach-object { 
        Write-Host "Updating $_.Name" -f cyan;
        git -C $_.fullname pull --rebase
    }
}