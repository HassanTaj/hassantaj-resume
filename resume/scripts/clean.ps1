$ErrorActionPreference = 'Stop'
$repositoryRoot = Resolve-Path (Join-Path $PSScriptRoot '..\..')
$buildDirectory = Join-Path $repositoryRoot 'resume\build'

if (Test-Path -LiteralPath $buildDirectory) {
    Get-ChildItem -LiteralPath $buildDirectory -File |
        Where-Object Name -ne '.gitkeep' |
        Remove-Item -Force
}
