﻿# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------

Set-StrictMode -Version 2

function GraphUri_ConvertStringToUri {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$Value
    )
    $Value = $Value.TrimStart("/", "\").TrimEnd("/", "\")
    $Value = [System.Uri]::UnescapeDataString($Value)

    $GraphUri = $null
    if (![System.Uri]::TryCreate($Value, "RelativeOrAbsolute", [ref]$GraphUri) -and ($null -eq $GraphUri)) {
        throw "The provided URI doesn't match the expected URI format. Please ensure the URI is formatted as 'https://graph.microsoft.com/{api-version}/{resource}'."
    }
    return $GraphUri
}

function GraphUri_ConvertRelativeUriToAbsoluteUri {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$Uri,

        [Parameter(Position = 1)]
        [string]$ApiVersion,

        [Parameter()]
        [string]$GraphHostUrl = "https://graph.microsoft.com/"
    )
    $UriBuilder = New-Object System.UriBuilder -ArgumentList $GraphHostUrl
    if ($Uri.StartsWith("v1.0") -or $Uri.StartsWith("beta")) {
        $UriBuilder.Path = $Uri
    }
    else {
        if ([System.String]::IsNullOrWhiteSpace($ApiVersion)) { $CurrentAPIVersion = "v1.0" } else { $CurrentAPIVersion = $ApiVersion }
        $UriBuilder.Path = "$CurrentAPIVersion/$Uri"
    }
    return New-Object -TypeName Uri -ArgumentList ([System.Uri]::UnescapeDataString($UriBuilder.Uri))
}

function GraphUri_TokenizeIds {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [System.Uri]$Uri
    )

    $TokenizedUri = $Uri.GetComponents([System.UriComponents]::SchemeAndServer, [System.UriFormat]::SafeUnescaped)
    $LastSegmentIndex = $Uri.Segments.length - 1
    $LastSegment = $Uri.Segments[$LastSegmentIndex]
    $UnescapedUri = $Uri.ToString()
    for ($i = 0 ; $i -lt $Uri.Segments.length; $i++) {
        # Segment contains an integer/id and is not API version.
        if ($Uri.Segments[$i] -match "[^v1.0|beta]\d") {
            #For Uris whose last segments match the regex '(.*?)', all characters from the first '(' are substituted with '.*' 
            if ($i -eq $LastSegmentIndex) {
                if ($UnescapedUri -match '(.*?)') {
                    try {
                        $UpdatedLastSegment = $LastSegment.Substring(0, $LastSegment.IndexOf("("))
                        $TokenizedUri += $UpdatedLastSegment + ".*"

                    }
                    catch {
                        $TokenizedUri += "{id}/"
                    }
                }
            }
            else {
                # Substitute integers/ids with {id} tokens, e.g, /users/289ee2a5-9450-4837-aa87-6bd8d8e72891 -> users/{id}.
                $TokenizedUri += "{id}/"
            }
        }
        else {
            $TokenizedUri += $Uri.Segments[$i]
        }
    }
    return $TokenizedUri.TrimEnd("/")
}

function GraphUri_GetResourceSegmentRegex {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [System.Uri]$Uri
    )

    if ($TokenizedUri -match "https:\/\/$($Uri.Host)\/(v1.0|beta)(\/.*)(\?(.*))?") {
        $ResourceSegmentRegex = "^$($matches[2] -Replace '(?<={)(.*?)(?=})', '(\w*-\w*|\w*)')$"
    }
    else {
        throw "The provided URI doesn't match the expected URI format. Please ensure the URI is formatted as 'https://graph.microsoft.com/{api-version}/{resource}'."
    }

    return $ResourceSegmentRegex
}

function GraphUri_RemoveNamespaceFromActionFunction {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [System.Uri]$Uri
    )
    $ActionFunctionFQNPattern = "\/Microsoft.Graph.(.*)$"

    $NewUri = $Uri
    # Remove FQN in action/function names.
    if ($Uri -match $ActionFunctionFQNPattern) {
        $MatchedUriSegment = $Matches.0
        # Trim nested namespace segments.
        $NestedNamespaceSegments = $Matches.1 -split "\."
        # Remove trailing '()' from functions.
        $LastSegment = $NestedNamespaceSegments[-1] -replace "\(\)", ""
        $NewUri = $Uri -replace [Regex]::Escape($MatchedUriSegment), "/$LastSegment"
    }

    return $NewUri
}
# SIG # Begin signature block
# MIIoKgYJKoZIhvcNAQcCoIIoGzCCKBcCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDmhkhGCDgubZjG
# cXFJpg67d6Qk84QsF8nCh5Y6H0JUNaCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIJ8kfFGWCOoUBrUuGiQy0awc
# 9tD7oaSTR5Nx/Lacni78MEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAnjcuGxqqj5024pVE42dvFvFkAtY8Xt+5Dce6kOWtMR8vy67072az8U+q
# DJo/Jnov5i7v1wwdncrIrA/UEVS6pOVn1CMVfTfbJ2BvfsB456DOt/mAE8rgDpS0
# SyDB62RYqqokxniDnaCNnUQlcmBeVBjqcOyCuJvess71P983hZgUcexXTk1QQWvB
# b76xdGkHdQ9Zb3XaeAelF+wH/RnivxTmc/UERadKwgZ6MJcUvB7GwG/BvbzDPGnU
# b+KfyJOLDMbp+oiy8gZ8yULl46DNwuByxBzEV8Mw+TOLmj7TkIp43djhUpyWLNbS
# /JhG2qWbLHDgEHKGAkQWNUsYuK8ok6GCF5QwgheQBgorBgEEAYI3AwMBMYIXgDCC
# F3wGCSqGSIb3DQEHAqCCF20wghdpAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFSBgsq
# hkiG9w0BCRABBKCCAUEEggE9MIIBOQIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCCHmPDq33XNnefdDvEXyIpDhoyo4B7vFlyEudCNPzLgQgIGZVbILAsO
# GBMyMDIzMTIwNTE2NDQwOS4wOTNaMASAAgH0oIHRpIHOMIHLMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1l
# cmljYSBPcGVyYXRpb25zMScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046QTkzNS0w
# M0UwLUQ5NDcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wg
# ghHqMIIHIDCCBQigAwIBAgITMwAAAdGyW0AobC7SRQABAAAB0TANBgkqhkiG9w0B
# AQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYD
# VQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMzA1MjUxOTEy
# MThaFw0yNDAyMDExOTEyMThaMIHLMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25z
# MScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046QTkzNS0wM0UwLUQ5NDcxJTAjBgNV
# BAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCZTNo0OeGz2XFd2gLg5nTlBm8XOpuwJIiXsMU61rwq
# 1ZKDpa443RrSG/pH8Gz6XNnFQKGnCqNCtmvoKULApwrT/s7/e1X0lNFKmj7U7X4p
# 00S0uQbW6LwSn/zWHaG2c54ZXsGY+BYfhWDgbFpCTxRzTnRCG62bkWPp6ZHbZPg4
# Ht1CRCAMhhOGTR8wI4G7wwWZwdMc6UvUUlq0ql9AxAfzkYRpi2tRvDHMdmZ3vyXp
# qhFwvRG8cgCH/TTCjW5q6aNbdqKL3BFDPzUtuCNsPXL3/E0dR2bDMqa0aNH+iIfh
# GC4/vcwuteOMCPUIDVSqDCNfIaPDEwYci1fd9gu1zVw+HEhDZM7Ea3nxIUrzt+Rf
# p5ToMMj4QAmJ6Uadm+TPbDbo8kFIK70ShmW8wn8fJk9ReQQEpTtIN43eRv9QmXy3
# Ued80osOBE+WkdMvSCFh+qgCsKdzQxQJG62cTeoU2eqNhH3oppXmyfVUwbsefQzM
# PtbinCZd0FUlmlM/dH+4OniqQyaHvrtYy3wqIafY3zeFITlVAoP9q9vF4W7KHR/u
# F0mvTpAL5NaTDN1plQS0MdjMkgzZK5gtwqOe/3rTlqBzxwa7YYp3urP5yWkTzISG
# nhNWIZOxOyQIOxZfbiIbAHbm3M8hj73KQWcCR5JavgkwUmncFHESaQf4Drqs+/1L
# 1QIDAQABo4IBSTCCAUUwHQYDVR0OBBYEFAuO8UzF7DcH0mmsF4XQxxHQvS2jMB8G
# A1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRYMFYwVKBSoFCG
# Tmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY3Jvc29mdCUy
# MFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEFBQcBAQRgMF4w
# XAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY2Vy
# dHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3J0MAwG
# A1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwDgYDVR0PAQH/BAQD
# AgeAMA0GCSqGSIb3DQEBCwUAA4ICAQCbu9rTAHV24mY0qoG5eEnImz5akGXTviBw
# Kp2Y51s26w8oDrWor+m00R4/3BcDmYlUK8Nrx/auYFYidZddcUjw42QxSStmv/qW
# nCQi/2OnH32KVHQ+kMOZPABQTG1XkcnYPUOOEEor6f/3Js1uj4wjHzE4V4aumYXB
# Asr4L5KR8vKes5tFxhMkWND/O7W/RaHYwJMjMkxVosBok7V21sJAlxScEXxfJa+/
# qkqUr7CZgw3R4jCHRkPqQhMWibXPMYar/iF0ZuLB9O89DMJNhjK9BSf6iqgZoMuz
# IVt+EBoTzpv/9p4wQ6xoBCs29mkj/EIWFdc+5a30kuCQOSEOj07+WI29A4k6QIRB
# 5w+eMmZ0Jec0sSyeQB5KjxE51iYMhtlMrUKcr06nBqCsSKPYsSAITAzgssJD+Z/c
# TS7Cu35fJrWhM9NYX24uAxYLAW0ipNtWptIeV6akuZEeEV6BNtM3VTk+mAlV5/eC
# /0Y17aVSjK5/gyDoLNmrgVwv5TAaBmq/wgRRFHmW9UJ3zv8Lmk6mIoAyTpqBbuUj
# MLyrtajuSsA/m2DnKMO0Qiz1v+FSVbqM38J/PTlhCTUbFOx0kLT7Y/7+ZyrilVCz
# yAYfFIinDIjWlM85tDeU8ZfJCjFKwq3DsRxV4JY18xww8TTmod3lkr9NqGQ54Lmy
# PVc+5ibNrjCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZI
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
# MCUGA1UECxMeblNoaWVsZCBUU1MgRVNOOkE5MzUtMDNFMC1EOTQ3MSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQBH
# JY2Fv+GhLQtRDR2vIzBaSv/7LKCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMA0GCSqGSIb3DQEBCwUAAgUA6RmogzAiGA8yMDIzMTIwNTEzNDc0
# N1oYDzIwMjMxMjA2MTM0NzQ3WjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDpGaiD
# AgEAMAcCAQACAjH1MAcCAQACAhO7MAoCBQDpGvoDAgEAMDYGCisGAQQBhFkKBAIx
# KDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZI
# hvcNAQELBQADggEBAG9lANN/TVZ0BL24XC4r/FIlUK4Ud82/n9VihzCJx10mPPug
# kYu/RslQcQDrKW4k26jJEkgzoAzcTqgOaW/cYMR3GURRv5r+gB3w8H87eCKwt5vw
# 3JZvX7lRrAoXLbbOS9+fASlmKqKdQ+jVA0Q42Lml4rQoic6IgJ8tRmoWykXHQAQ5
# EObgwyAtDz7+uIYGba2h6KPNkRaFJWFY5je8grQP5bOPl2NOuRG1VcRv8nYddSkG
# RMZNeel4aS1OduiTVdZIO9aVp3WvcQ1M5uAzv1gEcVYbaXA3p9mHSTnz3Q4IW6fi
# hygFi7A9/7YnQfdZcvRKFepO7W9U3XdCH7fvnOcxggQNMIIECQIBATCBkzB8MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNy
# b3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAdGyW0AobC7SRQABAAAB0TAN
# BglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8G
# CSqGSIb3DQEJBDEiBCBwSHJc7+VdlSkwPwB0yjW4+vUKfCXInSjg23Z5e84YcTCB
# +gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIMy8YXkCALv57c5sRhrPTub1q4Tw
# J6oVA36k8IiI/AcMMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTACEzMAAAHRsltAKGwu0kUAAQAAAdEwIgQghuweb6MqN289A4geEXCm8PpNEgN7
# 0u1V9dTe8ba7Ko8wDQYJKoZIhvcNAQELBQAEggIATx+hLAKFQFd27lc3RBHCPF/2
# nF0VPqMLeFurehCT3hvqCbz5NCOnP6BhbtsmCUE76zzGHr6equCMQA6jg2UTqvee
# fpgGoXkYx5XzR23pwpFIPIUzAJQPY+16jerho+B0ueMsg8+5s7HuxjwYJncsOYeV
# 0SIGx2VjRZMXY1LlHR75eTZcAOus9QgZqNUqkVKWbHhmes6/niYoPhkMWrdvyf1D
# tlUwiJJcjKmjRh0KflAmhr51IH7vw+8ctwIUWWFW0Q96aKwCog4oH8IYdPKMvah2
# i8w9wA5z4orvGZ9t6Y1yPGnnnxW1/O/ekJCjWlMkSyfwN92gK7pDYkWRUwzPon5T
# PwMfqBV/8yvYZ2oJGJx8DiAyhMElAgj+60giEKPyHuwQ3qtZyjRB3F4kApOOrk6Y
# Fvh29wNiJZXwasBbCbR83uidbOc/PVG6M3pHl/nvNXOv4xoQjiCcgR6t4hw06XJH
# R7XXT33Vx6Jxtdb8LjKaQISfMauVCYBAPlh3MLNsohGsj6oB3hcB3uho428Cox5h
# KL7XlVC8qCUG03vywYGlbRMydsnpBGtiiMo0OBN3PNixoQCQWcOAqG18rnh9Ru3E
# +wCeSXygK9AluGAJHcTi+igc1AEYD1mXuz+OxiuQWwEq3znOxFXwoZxtuZ78MAhx
# tQcep2Xuzw2pTOHo3K8=
# SIG # End signature block
