Import-module Terminal-Icons
Import-Module Posh-Git

# PSReadLine
Import-Module PSReadLine
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History

# Oh-My-PoSh
Import-Module oh-my-posh
$omp_path = 'C:\Users\Benjamin\git-repos\WindowsProfile\PowerShellProfile\oh-my-posh\codeunitone.omp.json'
oh-my-posh --init --shell pwsh --config $omp_path | Invoke-Expression