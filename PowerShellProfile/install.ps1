$ErrorActionPreference = "Stop"

if (!(Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force
}

Add-Content -Path $PROFILE -Value $('. ' + $(Join-Path $PSScriptRoot -ChildPath 'user_profile.ps1'))
