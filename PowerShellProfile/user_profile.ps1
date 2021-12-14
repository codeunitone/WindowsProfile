Import-module Terminal-Icons
Import-Module Posh-Git

# PSReadLine
Import-Module PSReadLine
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History

# Oh-My-PoSh
Import-Module oh-my-posh
$omp_config = $(Join-Path $PSScriptRoot -ChildPath 'oh-my-posh\codeunitone.omp.json')
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression