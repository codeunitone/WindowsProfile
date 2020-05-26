$ErrorActionPreference = "Stop"

$ProfileFolders = @(
	$(Join-Path $Home -ChildPath 'Documents\WindowsPowerShell')
	$(Join-Path $Home -ChildPath 'Documents\PowerShell')
)

foreach ($ProfileFolderPath in $ProfileFolders) {
	if (Test-Path $ProfileFolderPath) {
		$ProfileFolderObj = Get-Item $ProfileFolderPath
		if (($ProfileFolderObj.Attributes -band [IO.FileAttributes]::ReparsePoint)) {
			(get-item $ProfileFolderPath).Delete()
		}
		else {
			Move-Item $ProfileFolderPath "$ProfileFolderPath-backup"
		}
	}
	New-Item -Path $ProfileFolderPath -ItemType SymbolicLink -Value $PSScriptRoot
}