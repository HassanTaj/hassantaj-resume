$ErrorActionPreference = 'Stop'
$variants = @('senior-dotnet', 'platform-engineer', 'solution-architect', 'staff-engineer', 'ai-enabled-engineer')

foreach ($command in @('pdflatex')) {
    if (-not (Get-Command $command -ErrorAction SilentlyContinue)) {
        throw "Missing required command: $command"
    }
}

foreach ($variant in $variants) {
    & (Join-Path $PSScriptRoot 'build.ps1') -Variant $variant
}
