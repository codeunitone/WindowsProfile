$ErrorActionPreference = "Stop"

$SetingsFilePath = $(Join-Path $Home -ChildPath 'scoop\apps\vscode\current\data\user-data\User\settings.json')

if (Test-Path $SetingsFilePath) {
	$SetingsFilePathObject = Get-Item $SetingsFilePath
	if (($SetingsFilePathObject.Attributes -band [IO.FileAttributes]::ReparsePoint)) {
		(get-item $SetingsFilePath).Delete()
	}
	else {
		Move-Item $SetingsFilePath "$SetingsFilePath-backup"
	}
}

New-Item -Path $SetingsFilePath -ItemType SymbolicLink -Value $(Join-Path $PSScriptRoot -ChildPath 'settings.json')