param(
    [ValidateSet('senior-dotnet', 'platform-engineer', 'solution-architect', 'staff-engineer', 'ai-enabled-engineer')]
    [string]$Variant = 'solution-architect'
)

$ErrorActionPreference = 'Stop'
$repositoryRoot = Resolve-Path (Join-Path $PSScriptRoot '..\..')
$buildDirectory = Join-Path $repositoryRoot 'resume\build'
New-Item -ItemType Directory -Force -Path $buildDirectory | Out-Null

$compilerCandidates = @(
    (Join-Path $env:ProgramFiles 'MiKTeX\miktex\bin\x64\pdflatex.exe'),
    (Get-Command pdflatex -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -First 1)
) | Where-Object { $_ -and (Test-Path -LiteralPath $_) } | Select-Object -Unique

if (-not $compilerCandidates) {
    throw 'Missing required command: pdflatex. Install MiKTeX or TeX Live and add it to PATH.'
}

$compiler = $compilerCandidates[0]
$compilerArguments = @(
    '-interaction=nonstopmode',
    '-halt-on-error',
    '-output-directory=resume/build',
    "resume/variants/$Variant.tex"
)

if ($compiler -match 'MiKTeX') {
    $compilerArguments = @('--enable-installer') + $compilerArguments
}

Push-Location $repositoryRoot
try {
    foreach ($pass in 1..2) {
        & $compiler @compilerArguments
        if ($LASTEXITCODE -ne 0) {
            throw "PDF compilation failed on pass $pass."
        }
    }
}
finally {
    Pop-Location
}
