﻿param(
  [switch]$Isolated,
  [switch]$Pack,
  [switch]$Release
)

$ErrorActionPreference = 'Stop'
$ModuleName = "Authentication"
$ModulePrefix = "Microsoft.Graph"
$netStandard = "netstandard2.0"
$netApp = "net6.0"
$netFx = "net472"
$copyExtensions = @('.dll', '.pdb')

# Source code locations
$coreSrc = Join-Path $PSScriptRoot "../$ModuleName.Core"
$cmdletsSrc = Join-Path $PSScriptRoot "../$ModuleName"

# Generated output locations
$outDir = Join-Path $PSScriptRoot "artifacts"
$outDeps = Join-Path $outDir "Dependencies"
$outCore = Join-Path $outDeps "Core"
$outDesktop = Join-Path $outDeps "Desktop"

if ($PSEdition -ne 'Core') {
  Write-Error 'This script requires PowerShell Core to execute. [Note] Generated cmdlets will work in both PowerShell Core or Windows PowerShell.'
}

$Configuration = 'Debug'
if ($Release) {
  $Configuration = 'Release'
}

if (-not $Isolated) {
  Write-Host -ForegroundColor Green 'Creating isolated process...'
  $pwsh = [System.Diagnostics.Process]::GetCurrentProcess().Path
  & "$pwsh" -NonInteractive -NoLogo -NoProfile -File $MyInvocation.MyCommand.Path @PSBoundParameters -Isolated

  if ($LastExitCode -ne 0) {
    # Build failed. Don't attempt to run the module.
    return
  }

  if ($Pack) {
    . (Join-Path $PSScriptRoot 'pack-module.ps1')
    if ($LastExitCode -ne 0) {
      # Packing failed. Don't attempt to run the module.
      return
    }
  }
  return
}

# Clean build folders.
Write-Host -ForegroundColor Green 'Cleaning build folders...'
$null = Remove-Item -Path "$coreSrc/bin", "$coreSrc/obj" -Recurse -ErrorAction Ignore
$null = Remove-Item -Path "$cmdletsSrc/bin", "$cmdletsSrc/obj" -Recurse -ErrorAction Ignore

if ((Test-Path "$cmdletsSrc/bin") -or (Test-Path "$cmdletsSrc/obj")) {
  Write-Host -ForegroundColor Cyan 'Did you forget to exit your isolated module session before rebuilding?'
  Write-Error 'Unable to clean ''bin'' or ''obj'' folder. A process may have an open handle.'
}

Write-Host -ForegroundColor Green 'Compiling module...'
# Build authentication.core for each framework.
Push-Location $coreSrc
dotnet publish -c $Configuration -f $netStandard --verbosity quiet /nologo
dotnet publish -c $Configuration -f $netApp --verbosity quiet /nologo
dotnet publish -c $Configuration -f $netFx --verbosity quiet /nologo
Pop-Location

# Build authentication.
Push-Location $cmdletsSrc
dotnet publish -c $Configuration --verbosity quiet /nologo
Pop-Location

if ($LastExitCode -ne 0) {
  Write-Error 'Compilation failed.'
}

# Ensure out directory exists and is clean.
if (Test-Path $outDir) {
  Remove-Item -Path $outDir -Recurse -Force
}
New-Item -Path $outDir -ItemType Directory | out-null
New-Item -Path $outDeps -ItemType Directory | out-null
New-Item -Path $outCore -ItemType Directory | out-null
New-Item -Path $outDesktop -ItemType Directory | out-null

#Process markdown xml help
Write-Host -ForegroundColor Green 'Generate doc files ...'
$GenerateDocFilesS1 = (Join-Path $PSScriptRoot "generate-doc-files.ps1")
& $GenerateDocFilesS1

Write-Host -ForegroundColor Green 'Importing examples ...'
$ImportExamplesAndDescriptionsPS1 = (Join-Path $PSScriptRoot "import-examples.ps1")
& $ImportExamplesAndDescriptionsPS1

Write-Host -ForegroundColor Green 'Importing synopsis and descriptions ...'
$ImportSynopsisAndDescriptionsPS1 = (Join-Path $PSScriptRoot "import-synopsis-and-descriptions.ps1")
& $ImportSynopsisAndDescriptionsPS1

Write-Host -ForegroundColor Green 'Updating markdown files ...'
$UpdateMarkDownPS1 = (Join-Path $PSScriptRoot "update-markdown.ps1")
& $UpdateMarkDownPS1

Write-Host -ForegroundColor Green 'Creating new xml based help file ...'
$DocsPath = (Join-Path $PSScriptRoot "../docs/")
New-ExternalHelp -Path $DocsPath -OutputPath $PSScriptRoot -Force

# Copy manifest.
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName.format.ps1xml" -Destination $outDir
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName.psm1" -Destination $outDir
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName.psd1" -Destination $outDir
Copy-Item -Path "$cmdletsSrc/StartupScripts" -Filter *.ps1 -Recurse -Destination $outDir

#Copy markdown xml help
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName.dll-Help.xml" -Recurse -Destination $outDir
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName-Help.xml" -Recurse -Destination $outDir
# Copy custom commands.
Copy-Item -Path "$cmdletsSrc/custom" -Recurse -Destination $outDir

# Core assemblies to include with cmdlets (Let PowerShell load them).
$CoreAssemblies = @('Microsoft.Graph.Authentication.Core')

# Copy each authentication.core asset to out directory and remember it.
$Deps = [System.Collections.Generic.HashSet[string]]::new()
Get-ChildItem -Path "$coreSrc/bin/$Configuration/$netStandard/publish/" |
Where-Object { $_.Extension -in $copyExtensions } |
Where-Object { -not $CoreAssemblies.Contains($_.BaseName) } |
ForEach-Object { [void]$Deps.Add($_.Name); Copy-Item -Path $_.FullName -Destination $outDeps -Recurse }

Get-ChildItem -Path "$coreSrc/bin/$Configuration/$netApp/publish/" |
Where-Object { -not $CoreAssemblies.Contains($_.BaseName) } |
ForEach-Object { [void]$Deps.Add($_.Name); Copy-Item -Path $_.FullName -Destination $outCore -Recurse }

Get-ChildItem -Path "$coreSrc/bin/$Configuration/$netFx/publish/" |
Where-Object { -not $CoreAssemblies.Contains($_.BaseName) } |
ForEach-Object { [void]$Deps.Add($_.Name); Copy-Item -Path $_.FullName -Destination $outDesktop -Recurse }

# Now copy each authentication asset, not taking any found in authentication.core.
Get-ChildItem -Path "$cmdletsSrc/bin/$Configuration/$netStandard/publish/" |
Where-Object { -not $Deps.Contains($_.Name) -and $_.Extension -in $copyExtensions } |
ForEach-Object { Copy-Item -Path $_.FullName -Destination $outDir -Recurse }

# Update module manifest with nested assemblies.
$RequiredAssemblies = @(
  'Microsoft.Graph.Authentication.dll', 
  'Microsoft.Graph.Authentication.Core.dll'
)
Update-ModuleManifest -Path (Join-Path $outDir "$ModulePrefix.$ModuleName.psd1") -NestedModules $RequiredAssemblies

Write-Host -ForegroundColor Green '-------------Done-------------'

# SIG # Begin signature block
# MIIoKgYJKoZIhvcNAQcCoIIoGzCCKBcCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAjmt9egVCqAM5s
# U8glzf0NB2wtQjGwArkoBzzW9pUQeqCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
# esGEb+srAAAAAANOMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjMwMzE2MTg0MzI5WhcNMjQwMzE0MTg0MzI5WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDdCKiNI6IBFWuvJUmf6WdOJqZmIwYs5G7AJD5UbcL6tsC+EBPDbr36pFGo1bsU
# p53nRyFYnncoMg8FK0d8jLlw0lgexDDr7gicf2zOBFWqfv/nSLwzJFNP5W03DF/1
# 1oZ12rSFqGlm+O46cRjTDFBpMRCZZGddZlRBjivby0eI1VgTD1TvAdfBYQe82fhm
# WQkYR/lWmAK+vW/1+bO7jHaxXTNCxLIBW07F8PBjUcwFxxyfbe2mHB4h1L4U0Ofa
# +HX/aREQ7SqYZz59sXM2ySOfvYyIjnqSO80NGBaz5DvzIG88J0+BNhOu2jl6Dfcq
# jYQs1H/PMSQIK6E7lXDXSpXzAgMBAAGjggFzMIIBbzAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUnMc7Zn/ukKBsBiWkwdNfsN5pdwAw
# RQYDVR0RBD4wPKQ6MDgxHjAcBgNVBAsTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEW
# MBQGA1UEBRMNMjMwMDEyKzUwMDUxNjAfBgNVHSMEGDAWgBRIbmTlUAXTgqoXNzci
# tW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3JsMGEG
# CCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDovL3d3dy5taWNyb3NvZnQu
# Y29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3J0
# MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIBAD21v9pHoLdBSNlFAjmk
# mx4XxOZAPsVxxXbDyQv1+kGDe9XpgBnT1lXnx7JDpFMKBwAyIwdInmvhK9pGBa31
# TyeL3p7R2s0L8SABPPRJHAEk4NHpBXxHjm4TKjezAbSqqbgsy10Y7KApy+9UrKa2
# kGmsuASsk95PVm5vem7OmTs42vm0BJUU+JPQLg8Y/sdj3TtSfLYYZAaJwTAIgi7d
# hzn5hatLo7Dhz+4T+MrFd+6LUa2U3zr97QwzDthx+RP9/RZnur4inzSQsG5DCVIM
# pA1l2NWEA3KAca0tI2l6hQNYsaKL1kefdfHCrPxEry8onJjyGGv9YKoLv6AOO7Oh
# JEmbQlz/xksYG2N/JSOJ+QqYpGTEuYFYVWain7He6jgb41JbpOGKDdE/b+V2q/gX
# UgFe2gdwTpCDsvh8SMRoq1/BNXcr7iTAU38Vgr83iVtPYmFhZOVM0ULp/kKTVoir
# IpP2KCxT4OekOctt8grYnhJ16QMjmMv5o53hjNFXOxigkQWYzUO+6w50g0FAeFa8
# 5ugCCB6lXEk21FFB1FdIHpjSQf+LP/W2OV/HfhC3uTPgKbRtXo83TZYEudooyZ/A
# Vu08sibZ3MkGOJORLERNwKm2G7oqdOv4Qj8Z0JrGgMzj46NFKAxkLSpE5oHQYP1H
# tPx1lPfD7iNSbJsP6LiUHXH1MIIHejCCBWKgAwIBAgIKYQ6Q0gAAAAAAAzANBgkq
# hkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
# IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEwOTA5WjB+MQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNyb3NvZnQg
# Q29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIIC
# CgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+laUKq4BjgaBEm6f8MMHt03
# a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc6Whe0t+bU7IKLMOv2akr
# rnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4Ddato88tt8zpcoRb0Rrrg
# OGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+lD3v++MrWhAfTVYoonpy
# 4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nkkDstrjNYxbc+/jLTswM9
# sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6A4aN91/w0FK/jJSHvMAh
# dCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmdX4jiJV3TIUs+UsS1Vz8k
# A/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL5zmhD+kjSbwYuER8ReTB
# w3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zdsGbiwZeBe+3W7UvnSSmn
# Eyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3T8HhhUSJxAlMxdSlQy90
# lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS4NaIjAsCAwEAAaOCAe0w
# ggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRIbmTlUAXTgqoXNzcitW2o
# ynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYD
# VR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBDuRQFTuHqp8cx0SOJNDBa
# BgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2Ny
# bC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3JsMF4GCCsG
# AQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3J0MIGfBgNV
# HSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEFBQcCARYzaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1hcnljcHMuaHRtMEAGCCsG
# AQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkAYwB5AF8AcwB0AGEAdABl
# AG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn8oalmOBUeRou09h0ZyKb
# C5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7v0epo/Np22O/IjWll11l
# hJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0bpdS1HXeUOeLpZMlEPXh6
# I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/KmtYSWMfCWluWpiW5IP0
# wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvyCInWH8MyGOLwxS3OW560
# STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBpmLJZiWhub6e3dMNABQam
# ASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJihsMdYzaXht/a8/jyFqGa
# J+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYbBL7fQccOKO7eZS/sl/ah
# XJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbSoqKfenoi+kiVH6v7RyOA
# 9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sLgOppO6/8MO0ETI7f33Vt
# Y5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtXcVZOSEXAQsmbdlsKgEhr
# /Xmfwb1tbWrJUnMTDXpQzTGCGgowghoGAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAANOtTx6wYRv6ysAAAAAA04wDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIKCLqjH/DcptjJ86QBfBGREV
# WymdnbGnCnvb2Rj1H9roMEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAtI3L8zA7t53jCZnuArXU1klHbJkunqWO4T8fiIQKSHrasQ+5gcmabBWS
# p+D7L12KlV5t3bnyiKII7dHwwox2Yan7wQ8L4RXODPCjldtFjUCv/6TGon+DHlou
# tkCaRo35RTecNyjw2eIBK7B37AeQuR7ZLwZ9Ucy1PC9nFgmSS1GVdujllCDiycv7
# oGG6b8dmOJDbHHSV13InWHaL8Hgm0JoHcTRMWuMu4qdLGRyG4l5oC9mqj5C0Uu3j
# eiFeOaxz+Uy77Jlzq2X5ZUzWvRJKM733AzY6joKP4+NHmoGNFEuyJppgB5IpZQ+J
# ktf/xTjkBY1kL065EVbalL8rWPUEeKGCF5QwgheQBgorBgEEAYI3AwMBMYIXgDCC
# F3wGCSqGSIb3DQEHAqCCF20wghdpAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFSBgsq
# hkiG9w0BCRABBKCCAUEEggE9MIIBOQIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCDoGhnMsDSjYjn9iUZfAmu7ltpGJWg85vqJdqDTGWudswIGZVbI8mP6
# GBMyMDIzMTIwNTE2NDQwOS4zNzVaMASAAgH0oIHRpIHOMIHLMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1l
# cmljYSBPcGVyYXRpb25zMScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046QTAwMC0w
# NUUwLUQ5NDcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wg
# ghHqMIIHIDCCBQigAwIBAgITMwAAAdB3CKrvoxfG3QABAAAB0DANBgkqhkiG9w0B
# AQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYD
# VQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMzA1MjUxOTEy
# MTRaFw0yNDAyMDExOTEyMTRaMIHLMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25z
# MScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046QTAwMC0wNUUwLUQ5NDcxJTAjBgNV
# BAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQDfMlfn35fvM0XAUSmI5qiG0UxPi25HkSyBgzk3zpYO
# 311d1OEEFz0QpAK23s1dJFrjB5gD+SMw5z6EwxC4CrXU9KaQ4WNHqHrhWftpgo3M
# kJex9frmO9MldUfjUG56sIW6YVF6YjX+9rT1JDdCDHbo5nZiasMigGKawGb2HqD7
# /kjRR67RvVh7Q4natAVu46Zf5MLviR0xN5cNG20xwBwgttaYEk5XlULaBH5OnXz2
# eWoIx+SjDO7Bt5BuABWY8SvmRQfByT2cppEzTjt/fs0xp4B1cAHVDwlGwZuv9Rfc
# 3nddxgFrKA8MWHbJF0+aWUUYIBR8Fy2guFVHoHeOze7IsbyvRrax//83gYqo8c5Z
# /1/u7kjLcTgipiyZ8XERsLEECJ5ox1BBLY6AjmbgAzDdNl2Leej+qIbdBr/SUvKE
# C+Xw4xjFMOTUVWKWemt2khwndUfBNR7Nzu1z9L0Wv7TAY/v+v6pNhAeohPMCFJc+
# ak6uMD8TKSzWFjw5aADkmD9mGuC86yvSKkII4MayzoUdseT0nfk8Y0fPjtdw2Wne
# jl6zLHuYXwcDau2O1DMuoiedNVjTF37UEmYT+oxC/OFXUGPDEQt9tzgbR9g8HLtU
# fEeWOsOED5xgb5rwyfvIss7H/cdHFcIiIczzQgYnsLyEGepoZDkKhSMR5eCB6Kcv
# /QIDAQABo4IBSTCCAUUwHQYDVR0OBBYEFDPhAYWS0oA+lOtITfjJtyl0knRRMB8G
# A1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRYMFYwVKBSoFCG
# Tmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY3Jvc29mdCUy
# MFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEFBQcBAQRgMF4w
# XAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY2Vy
# dHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3J0MAwG
# A1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwDgYDVR0PAQH/BAQD
# AgeAMA0GCSqGSIb3DQEBCwUAA4ICAQCXh+ckCkZaA06SNW+qxtS9gHQp4x7G+gdi
# kngKItEr8otkXIrmWPYrarRWBlY91lqGiilHyIlZ3iNBUbaNEmaKAGMZ5YcS7IZU
# KPaq1jU0msyl+8og0t9C/Z26+atx3vshHrFQuSgwTHZVpzv7k8CYnBYoxdhI1uGh
# qH595mqLvtMsxEN/1so7U+b3U6LCry5uwwcz5+j8Oj0GUX3b+iZg+As0xTN6T0Qa
# 8BNec/LwcyqYNEaMkW2VAKrmhvWH8OCDTcXgONnnABQHBfXK/fLAbHFGS1XNOtr6
# 2/iaHBGAkrCGl6Bi8Pfws6fs+w+sE9r3hX9Vg0gsRMoHRuMaiXsrGmGsuYnLn3Aw
# TguMatw9R8U5vJtWSlu1CFO5P0LEvQQiMZ12sQSsQAkNDTs9rTjVNjjIUgoZ6XPM
# xlcPIDcjxw8bfeb4y4wAxM2RRoWcxpkx+6IIf2L+b7gLHtBxXCWJ5bMW7WwUC2Ll
# tburUwBv0SgjpDtbEqw/uDgWBerCT+Zty3Nc967iGaQjyYQH6H/h9Xc8smm2n6Vj
# ySRx2swnW3hr6Qx63U/xY9HL6FNhrGiFED7ZRKrnwvvXvMVQUIEkB7GUEeN6heY8
# gHLt0jLV3yzDiQA8R8p5YGgGAVt9MEwgAJNY1iHvH/8vzhJSZFNkH8svRztO/i3T
# vKrjb8ZxwjCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZI
# hvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# MjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAy
# MDEwMB4XDTIxMDkzMDE4MjIyNVoXDTMwMDkzMDE4MzIyNVowfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoIC
# AQDk4aZM57RyIQt5osvXJHm9DtWC0/3unAcH0qlsTnXIyjVX9gF/bErg4r25Phdg
# M/9cT8dm95VTcVrifkpa/rg2Z4VGIwy1jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPF
# dvWGUNzBRMhxXFExN6AKOG6N7dcP2CZTfDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6
# GnszrYBbfowQHJ1S/rboYiXcag/PXfT+jlPP1uyFVk3v3byNpOORj7I5LFGc6XBp
# Dco2LXCOMcg1KL3jtIckw+DJj361VI/c+gVVmG1oO5pGve2krnopN6zL64NF50Zu
# yjLVwIYwXE8s4mKyzbnijYjklqwBSru+cakXW2dg3viSkR4dPf0gz3N9QZpGdc3E
# XzTdEonW/aUgfX782Z5F37ZyL9t9X4C626p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0
# lBw0gg/wEPK3Rxjtp+iZfD9M269ewvPV2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1q
# GFphAXPKZ6Je1yh2AuIzGHLXpyDwwvoSCtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ
# +QuJYfM2BjUYhEfb3BvR/bLUHMVr9lxSUV0S2yW6r1AFemzFER1y7435UsSFF5PA
# PBXbGjfHCBUYP3irRbb1Hode2o+eFnJpxq57t7c+auIurQIDAQABo4IB3TCCAdkw
# EgYJKwYBBAGCNxUBBAUCAwEAATAjBgkrBgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxG
# NSnPEP8vBO4wHQYDVR0OBBYEFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMFwGA1UdIARV
# MFMwUQYMKwYBBAGCN0yDfQEBMEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9wa2lvcHMvRG9jcy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAK
# BggrBgEFBQcDCDAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMC
# AYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvX
# zpoYxDBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20v
# cGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYI
# KwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG
# 9w0BAQsFAAOCAgEAnVV9/Cqt4SwfZwExJFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0x
# M7U518JxNj/aZGx80HU5bbsPMeTCj/ts0aGUGCLu6WZnOlNN3Zi6th542DYunKmC
# VgADsAW+iehp4LoJ7nvfam++Kctu2D9IdQHZGN5tggz1bSNU5HhTdSRXud2f8449
# xvNo32X2pFaq95W2KFUn0CS9QKC/GbYSEhFdPSfgQJY4rPf5KYnDvBewVIVCs/wM
# nosZiefwC2qBwoEZQhlSdYo2wh3DYXMuLGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDS
# PeZKPmY7T7uG+jIa2Zb0j/aRAfbOxnT99kxybxCrdTDFNLB62FD+CljdQDzHVG2d
# Y3RILLFORy3BFARxv2T5JL5zbcqOCb2zAVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxn
# GSgkujhLmm77IVRrakURR6nxt67I6IleT53S0Ex2tVdUCbFpAUR+fKFhbHP+Crvs
# QWY9af3LwUFJfn6Tvsv4O+S3Fb+0zj6lMVGEvL8CwYKiexcdFYmNcP7ntdAoGokL
# jzbaukz5m/8K6TT4JDVnK+ANuOaMmdbhIurwJ0I9JZTmdHRbatGePu1+oDEzfbzL
# 6Xu/OHBE0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggNN
# MIICNQIBATCB+aGB0aSBzjCByzELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEn
# MCUGA1UECxMeblNoaWVsZCBUU1MgRVNOOkEwMDAtMDVFMC1EOTQ3MSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQC8
# t8hT8KKUX91lU5FqRP9Cfu9MiaCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMA0GCSqGSIb3DQEBCwUAAgUA6RmoljAiGA8yMDIzMTIwNTEzNDgw
# NloYDzIwMjMxMjA2MTM0ODA2WjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDpGaiW
# AgEAMAcCAQACAhuCMAcCAQACAhSlMAoCBQDpGvoWAgEAMDYGCisGAQQBhFkKBAIx
# KDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZI
# hvcNAQELBQADggEBAC4o8GzuMMjJg/FD8DQ4vq0owkF/QjTjhNoOZ9Xi9UG4rUL+
# XwZRncMdd3PiApuRJ93MbBTg9v/dYNERa2jtyKOgKUYp0y0XSWV2EcVu3epo7g8C
# hOd9lruG7FFPi3ddovcmaLMhpoVtKVIKPxpsq5hadMsJlb5sizL4E6F8XFIYMx+n
# 4NqrTjhXASJZoAHRYlFn21FZxQeJ492s0l4j50CQULUh5PdHMNtRZYkqpV0hhLGV
# atPusl90hImTNzyvZSTwZZY+VVotS8O+zQyfOJL8vbQg5GuFC1glv/LXJ2EzXEuy
# LMoob8KBSOhweq0EjjK2eYhskF5nVCGl6hveaIIxggQNMIIECQIBATCBkzB8MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNy
# b3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAdB3CKrvoxfG3QABAAAB0DAN
# BglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8G
# CSqGSIb3DQEJBDEiBCAEuC8jRyWnqGzzFyfiKcjBdlKajOTzKoDWx5tXb2YuHDCB
# +gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIAiVQAZftNP/Md1E2Yw+fBXa9w6f
# jmTZ5WAerrTSPwnXMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTACEzMAAAHQdwiq76MXxt0AAQAAAdAwIgQgIiyr5Yp4fv8SCyJjOmB6qiX7QmGN
# CfgmeUYcUqQoTVMwDQYJKoZIhvcNAQELBQAEggIAgccfR0+qr5iQCwd/m9WfOamU
# iiW/ThdeZNp/+PYghcNxopQo5/xwDwdOLnPfdsw0tMZjvtKGl68BsQ8OaTNelscg
# Zh/fbKE19B+jfWz2euvUUTZh7LpL/6rCpv6+nTAG2Q3rsIWi8cP+lnqbqYdzVgyA
# VBWuTR56oi6YKnffA/slK62bmKP/KYtqgO8UklzYffDFBKRq8BmYKwYlR5gA+SPF
# pliXXFC9F58+Ltv4Wi3+8kXBWjOYSck+/Jka786F0aVSRt+grEEzC2p7btIw/Emr
# mJKov1rnPxbRLaq6V3B+pGbArw6a/Wa0n7aVLRmBg4CvcxWEEdbOTUsSA5YLMV9Y
# fH6DwoD1tEO7wQVjacsqD59AABy+gRiqckHKgIkzv9h59dPb6lD8J1C9NfHEgsp4
# ZkTAWRyZQyET5a2SQj63thGByp7BDWnQZfUA5/Ls9YcpDRGF1lDt5dsGReZV4keK
# wLLE1GbldjT20nvjK8oq9uZrVGZU6wXj61mEYFfWGwChfSjuy9f31eJ73pSoKuFt
# 50byzZwxK5Q35uRM/Apcc0AwUZnHPrjAXSnZ8Pfl2KCazCo7igiBCCYrNaH8pUto
# ht2PlausNAOaY12rAooFLQkSdJL+uK9WRevkzPC3mGqbdg9aUHKyny0JB5un6J0u
# gAqhiYGEMBEt0SIqVFs=
# SIG # End signature block
