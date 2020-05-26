$ErrorActionPreference = "Stop"

$SetingsFilePath = $(Join-Path $Home -ChildPath 'AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json')

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