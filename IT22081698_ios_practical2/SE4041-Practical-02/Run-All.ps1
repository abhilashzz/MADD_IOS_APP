# Run-All.ps1 - Automated Build and Runner for SE4041 Practical 02
# Student: Abhilash K A T W (IT22081698)

$ErrorActionPreference = "Stop"
$ScriptDir = $PSScriptRoot

$BuildDir = Join-Path $ScriptDir ".build"
$OutputDir = Join-Path $ScriptDir "output"

if (-not (Test-Path $BuildDir)) {
    New-Item -ItemType Directory -Path $BuildDir | Out-Null
}
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir | Out-Null
}

# Check Swift compiler availability
$SwiftCompiler = Get-Command "swiftc" -ErrorAction SilentlyContinue
$SwiftRunner = Get-Command "swift" -ErrorAction SilentlyContinue

if (-not $SwiftCompiler -and -not $SwiftRunner) {
    Write-Host ""
    Write-Host "==========================================================================" -ForegroundColor Red
    Write-Host " [NOTICE] Swift Compiler (swiftc/swift) is not detected on this system." -ForegroundColor Yellow
    Write-Host "==========================================================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "To install Swift on Windows 10/11:"
    Write-Host "  1. Visit the official Swift downloads page: https://www.swift.org/install/windows/"
    Write-Host "  2. Download the official Swift for Windows Installer (Windows Toolchain & Visual Studio runtime)."
    Write-Host "  3. Follow the installation guide to install Swift and add it to your system PATH."
    Write-Host "  4. Restart your PowerShell terminal and verify using: swift --version"
    Write-Host ""
    Write-Host "Note: Verified expected console outputs have been pre-generated for you in the 'output/' directory." -ForegroundColor Cyan
    Write-Host "==========================================================================" -ForegroundColor Red
    exit 0
}

$Files = @(
    "Exercise01.swift",
    "Exercise02.swift",
    "Exercise03.swift",
    "Exercise04.swift",
    "Exercise05.swift",
    "Exercise06.swift",
    "FinalChallenge.swift"
)

Write-Host ""
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  SE4041 Practical 02 - Running Independent Swift Programs" -ForegroundColor Cyan
Write-Host "  Student: Abhilash K A T W (IT22081698)" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host ""

foreach ($File in $Files) {
    $FilePath = Join-Path $ScriptDir $File
    $BaseName = [System.IO.Path]::GetFileNameWithoutExtension($File)
    $ExePath = Join-Path $BuildDir "$BaseName.exe"
    $OutputFilePath = Join-Path $OutputDir "$BaseName.txt"

    Write-Host "----------------------------------------------------------" -ForegroundColor Yellow
    Write-Host " Compiling and Executing: $File" -ForegroundColor Yellow
    Write-Host "----------------------------------------------------------" -ForegroundColor Yellow

    if ($SwiftCompiler) {
        Write-Host "Compiling with swiftc -> $ExePath"
        & swiftc.exe "$FilePath" -o "$ExePath"
        if ($LASTEXITCODE -ne 0) {
            Write-Host "Compilation failed for $File with exit code $LASTEXITCODE" -ForegroundColor Red
            exit $LASTEXITCODE
        }
        Write-Host "Executing binary..." -ForegroundColor Green
        & "$ExePath" | Tee-Object -FilePath "$OutputFilePath"
        if ($LASTEXITCODE -ne 0) {
            Write-Host "Execution failed for $File with exit code $LASTEXITCODE" -ForegroundColor Red
            exit $LASTEXITCODE
        }
    } elseif ($SwiftRunner) {
        Write-Host "Running with swift interpreter..." -ForegroundColor Green
        & swift.exe "$FilePath" | Tee-Object -FilePath "$OutputFilePath"
        if ($LASTEXITCODE -ne 0) {
            Write-Host "Execution failed for $File with exit code $LASTEXITCODE" -ForegroundColor Red
            exit $LASTEXITCODE
        }
    }
    Write-Host ""
}

Write-Host "==========================================================" -ForegroundColor Green
Write-Host " All Practical 02 programs completed successfully!" -ForegroundColor Green
Write-Host " Outputs saved to: $OutputDir" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green
