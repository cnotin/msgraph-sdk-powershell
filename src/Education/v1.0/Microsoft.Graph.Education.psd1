#
# Module manifest for module 'Microsoft.Graph.Education'
#
# Generated by: Microsoft Corporation
#
# Generated on: 5/16/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Education.psm1'

# Version number of this module.
ModuleVersion = '2.0.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'c413b855-1538-4f43-80a9-cb453e059e8a'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Graph PowerShell Cmdlets'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Microsoft.Graph.Authentication'; RequiredVersion = '2.0.0'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = './bin/Microsoft.Graph.Education.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Education.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-MgEducationClass', 'Get-MgEducationClassAssignment', 
               'Get-MgEducationClassAssignmentCategory', 
               'Get-MgEducationClassAssignmentCategoryByRef', 
               'Get-MgEducationClassAssignmentCategoryCount', 
               'Get-MgEducationClassAssignmentCategoryDelta', 
               'Get-MgEducationClassAssignmentCount', 
               'Get-MgEducationClassAssignmentDefault', 
               'Get-MgEducationClassAssignmentDelta', 
               'Get-MgEducationClassAssignmentResource', 
               'Get-MgEducationClassAssignmentResourceCount', 
               'Get-MgEducationClassAssignmentRubric', 
               'Get-MgEducationClassAssignmentRubricByRef', 
               'Get-MgEducationClassAssignmentSetting', 
               'Get-MgEducationClassAssignmentSubmission', 
               'Get-MgEducationClassAssignmentSubmissionCount', 
               'Get-MgEducationClassAssignmentSubmissionOutcome', 
               'Get-MgEducationClassAssignmentSubmissionOutcomeCount', 
               'Get-MgEducationClassAssignmentSubmissionResource', 
               'Get-MgEducationClassAssignmentSubmissionResourceCount', 
               'Get-MgEducationClassAssignmentSubmissionSubmittedResource', 
               'Get-MgEducationClassAssignmentSubmissionSubmittedResourceCount', 
               'Get-MgEducationClassCount', 'Get-MgEducationClassDelta', 
               'Get-MgEducationClassGroup', 'Get-MgEducationClassMember', 
               'Get-MgEducationClassMemberByRef', 
               'Get-MgEducationClassMemberCount', 'Get-MgEducationClassSchool', 
               'Get-MgEducationClassSchoolCount', 'Get-MgEducationClassTeacher', 
               'Get-MgEducationClassTeacherByRef', 
               'Get-MgEducationClassTeacherCount', 'Get-MgEducationMe', 
               'Get-MgEducationMeAssignment', 
               'Get-MgEducationMeAssignmentCategory', 
               'Get-MgEducationMeAssignmentCategoryByRef', 
               'Get-MgEducationMeAssignmentCategoryCount', 
               'Get-MgEducationMeAssignmentCategoryDelta', 
               'Get-MgEducationMeAssignmentCount', 
               'Get-MgEducationMeAssignmentDelta', 
               'Get-MgEducationMeAssignmentResource', 
               'Get-MgEducationMeAssignmentResourceCount', 
               'Get-MgEducationMeAssignmentRubric', 
               'Get-MgEducationMeAssignmentRubricByRef', 
               'Get-MgEducationMeAssignmentSubmission', 
               'Get-MgEducationMeAssignmentSubmissionCount', 
               'Get-MgEducationMeAssignmentSubmissionOutcome', 
               'Get-MgEducationMeAssignmentSubmissionOutcomeCount', 
               'Get-MgEducationMeAssignmentSubmissionResource', 
               'Get-MgEducationMeAssignmentSubmissionResourceCount', 
               'Get-MgEducationMeAssignmentSubmissionSubmittedResource', 
               'Get-MgEducationMeAssignmentSubmissionSubmittedResourceCount', 
               'Get-MgEducationMeClass', 'Get-MgEducationMeClassCount', 
               'Get-MgEducationMeRubric', 'Get-MgEducationMeRubricCount', 
               'Get-MgEducationMeSchool', 'Get-MgEducationMeSchoolCount', 
               'Get-MgEducationMeTaughtClass', 'Get-MgEducationMeTaughtClassCount', 
               'Get-MgEducationMeUser', 'Get-MgEducationMeUserMailboxSetting', 
               'Get-MgEducationRoot', 'Get-MgEducationSchool', 
               'Get-MgEducationSchoolAdministrativeUnit', 
               'Get-MgEducationSchoolClass', 'Get-MgEducationSchoolClassByRef', 
               'Get-MgEducationSchoolClassCount', 'Get-MgEducationSchoolCount', 
               'Get-MgEducationSchoolDelta', 'Get-MgEducationSchoolUser', 
               'Get-MgEducationSchoolUserByRef', 'Get-MgEducationSchoolUserCount', 
               'Get-MgEducationUser', 'Get-MgEducationUserAssignment', 
               'Get-MgEducationUserAssignmentCategory', 
               'Get-MgEducationUserAssignmentCategoryByRef', 
               'Get-MgEducationUserAssignmentCategoryCount', 
               'Get-MgEducationUserAssignmentCategoryDelta', 
               'Get-MgEducationUserAssignmentCount', 
               'Get-MgEducationUserAssignmentDelta', 
               'Get-MgEducationUserAssignmentResource', 
               'Get-MgEducationUserAssignmentResourceCount', 
               'Get-MgEducationUserAssignmentRubric', 
               'Get-MgEducationUserAssignmentRubricByRef', 
               'Get-MgEducationUserAssignmentSubmission', 
               'Get-MgEducationUserAssignmentSubmissionCount', 
               'Get-MgEducationUserAssignmentSubmissionOutcome', 
               'Get-MgEducationUserAssignmentSubmissionOutcomeCount', 
               'Get-MgEducationUserAssignmentSubmissionResource', 
               'Get-MgEducationUserAssignmentSubmissionResourceCount', 
               'Get-MgEducationUserAssignmentSubmissionSubmittedResource', 
               'Get-MgEducationUserAssignmentSubmissionSubmittedResourceCount', 
               'Get-MgEducationUserClass', 'Get-MgEducationUserClassCount', 
               'Get-MgEducationUserCount', 'Get-MgEducationUserDelta', 
               'Get-MgEducationUserMailboxSetting', 'Get-MgEducationUserRubric', 
               'Get-MgEducationUserRubricCount', 'Get-MgEducationUserSchool', 
               'Get-MgEducationUserSchoolCount', 'Get-MgEducationUserTaughtClass', 
               'Get-MgEducationUserTaughtClassCount', 
               'Invoke-MgReassignEducationClassAssignmentSubmission', 
               'Invoke-MgReassignEducationMeAssignmentSubmission', 
               'Invoke-MgReassignEducationUserAssignmentSubmission', 
               'Invoke-MgReturnEducationClassAssignmentSubmission', 
               'Invoke-MgReturnEducationMeAssignmentSubmission', 
               'Invoke-MgReturnEducationUserAssignmentSubmission', 
               'Invoke-MgUnsubmitEducationClassAssignmentSubmission', 
               'Invoke-MgUnsubmitEducationMeAssignmentSubmission', 
               'Invoke-MgUnsubmitEducationUserAssignmentSubmission', 
               'New-MgEducationClass', 'New-MgEducationClassAssignment', 
               'New-MgEducationClassAssignmentCategory', 
               'New-MgEducationClassAssignmentCategoryByRef', 
               'New-MgEducationClassAssignmentResource', 
               'New-MgEducationClassAssignmentSubmission', 
               'New-MgEducationClassAssignmentSubmissionOutcome', 
               'New-MgEducationClassAssignmentSubmissionResource', 
               'New-MgEducationClassAssignmentSubmissionSubmittedResource', 
               'New-MgEducationClassMemberByRef', 
               'New-MgEducationClassTeacherByRef', 'New-MgEducationMeAssignment', 
               'New-MgEducationMeAssignmentCategory', 
               'New-MgEducationMeAssignmentCategoryByRef', 
               'New-MgEducationMeAssignmentResource', 
               'New-MgEducationMeAssignmentSubmission', 
               'New-MgEducationMeAssignmentSubmissionOutcome', 
               'New-MgEducationMeAssignmentSubmissionResource', 
               'New-MgEducationMeAssignmentSubmissionSubmittedResource', 
               'New-MgEducationMeRubric', 'New-MgEducationSchool', 
               'New-MgEducationSchoolClassByRef', 'New-MgEducationSchoolUserByRef', 
               'New-MgEducationUser', 'New-MgEducationUserAssignment', 
               'New-MgEducationUserAssignmentCategory', 
               'New-MgEducationUserAssignmentCategoryByRef', 
               'New-MgEducationUserAssignmentResource', 
               'New-MgEducationUserAssignmentSubmission', 
               'New-MgEducationUserAssignmentSubmissionOutcome', 
               'New-MgEducationUserAssignmentSubmissionResource', 
               'New-MgEducationUserAssignmentSubmissionSubmittedResource', 
               'New-MgEducationUserRubric', 'Publish-MgEducationClassAssignment', 
               'Publish-MgEducationMeAssignment', 
               'Publish-MgEducationUserAssignment', 'Remove-MgEducationClass', 
               'Remove-MgEducationClassAssignment', 
               'Remove-MgEducationClassAssignmentCategory', 
               'Remove-MgEducationClassAssignmentCategoryByRef', 
               'Remove-MgEducationClassAssignmentDefault', 
               'Remove-MgEducationClassAssignmentResource', 
               'Remove-MgEducationClassAssignmentRubric', 
               'Remove-MgEducationClassAssignmentRubricByRef', 
               'Remove-MgEducationClassAssignmentSetting', 
               'Remove-MgEducationClassAssignmentSubmission', 
               'Remove-MgEducationClassAssignmentSubmissionOutcome', 
               'Remove-MgEducationClassAssignmentSubmissionResource', 
               'Remove-MgEducationClassAssignmentSubmissionSubmittedResource', 
               'Remove-MgEducationClassMemberByRef', 
               'Remove-MgEducationClassTeacherByRef', 'Remove-MgEducationMe', 
               'Remove-MgEducationMeAssignment', 
               'Remove-MgEducationMeAssignmentCategoryByRef', 
               'Remove-MgEducationMeAssignmentResource', 
               'Remove-MgEducationMeAssignmentRubric', 
               'Remove-MgEducationMeAssignmentRubricByRef', 
               'Remove-MgEducationMeAssignmentSubmission', 
               'Remove-MgEducationMeAssignmentSubmissionOutcome', 
               'Remove-MgEducationMeAssignmentSubmissionResource', 
               'Remove-MgEducationMeAssignmentSubmissionSubmittedResource', 
               'Remove-MgEducationMeRubric', 'Remove-MgEducationSchool', 
               'Remove-MgEducationSchoolClassByRef', 
               'Remove-MgEducationSchoolUserByRef', 'Remove-MgEducationUser', 
               'Remove-MgEducationUserAssignment', 
               'Remove-MgEducationUserAssignmentCategoryByRef', 
               'Remove-MgEducationUserAssignmentResource', 
               'Remove-MgEducationUserAssignmentRubric', 
               'Remove-MgEducationUserAssignmentRubricByRef', 
               'Remove-MgEducationUserAssignmentSubmission', 
               'Remove-MgEducationUserAssignmentSubmissionOutcome', 
               'Remove-MgEducationUserAssignmentSubmissionResource', 
               'Remove-MgEducationUserAssignmentSubmissionSubmittedResource', 
               'Remove-MgEducationUserRubric', 
               'Set-MgEducationClassAssignmentRubricByRef', 
               'Set-MgEducationClassAssignmentSubmissionUpResourceFolder', 
               'Set-MgEducationClassAssignmentUpFeedbackResourceFolder', 
               'Set-MgEducationClassAssignmentUpResourceFolder', 
               'Set-MgEducationMeAssignmentRubricByRef', 
               'Set-MgEducationMeAssignmentSubmissionUpResourceFolder', 
               'Set-MgEducationMeAssignmentUpFeedbackResourceFolder', 
               'Set-MgEducationMeAssignmentUpResourceFolder', 
               'Set-MgEducationUserAssignmentRubricByRef', 
               'Set-MgEducationUserAssignmentSubmissionUpResourceFolder', 
               'Set-MgEducationUserAssignmentUpFeedbackResourceFolder', 
               'Set-MgEducationUserAssignmentUpResourceFolder', 
               'Submit-MgEducationClassAssignmentSubmission', 
               'Submit-MgEducationMeAssignmentSubmission', 
               'Submit-MgEducationUserAssignmentSubmission', 
               'Update-MgEducationClass', 'Update-MgEducationClassAssignment', 
               'Update-MgEducationClassAssignmentCategory', 
               'Update-MgEducationClassAssignmentDefault', 
               'Update-MgEducationClassAssignmentResource', 
               'Update-MgEducationClassAssignmentRubric', 
               'Update-MgEducationClassAssignmentSetting', 
               'Update-MgEducationClassAssignmentSubmission', 
               'Update-MgEducationClassAssignmentSubmissionOutcome', 
               'Update-MgEducationClassAssignmentSubmissionResource', 
               'Update-MgEducationClassAssignmentSubmissionSubmittedResource', 
               'Update-MgEducationMe', 'Update-MgEducationMeAssignment', 
               'Update-MgEducationMeAssignmentResource', 
               'Update-MgEducationMeAssignmentRubric', 
               'Update-MgEducationMeAssignmentSubmission', 
               'Update-MgEducationMeAssignmentSubmissionOutcome', 
               'Update-MgEducationMeAssignmentSubmissionResource', 
               'Update-MgEducationMeAssignmentSubmissionSubmittedResource', 
               'Update-MgEducationMeRubric', 
               'Update-MgEducationMeUserMailboxSetting', 'Update-MgEducationRoot', 
               'Update-MgEducationSchool', 
               'Update-MgEducationSchoolAdministrativeUnit', 
               'Update-MgEducationUser', 'Update-MgEducationUserAssignment', 
               'Update-MgEducationUserAssignmentResource', 
               'Update-MgEducationUserAssignmentRubric', 
               'Update-MgEducationUserAssignmentSubmission', 
               'Update-MgEducationUserAssignmentSubmissionOutcome', 
               'Update-MgEducationUserAssignmentSubmissionResource', 
               'Update-MgEducationUserAssignmentSubmissionSubmittedResource', 
               'Update-MgEducationUserMailboxSetting', 
               'Update-MgEducationUserRubric'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Microsoft','Office365','Graph','PowerShell','PSModule','PSIncludes_Cmdlet'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/devservicesagreement'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/microsoftgraph/msgraph-sdk-powershell'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/microsoftgraph/msgraph-sdk-powershell/features/2.0/docs/images/graph_color256.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'See https://aka.ms/GraphPowerShell-Release.'

        # Prerelease string of this module
        Prerelease = 'preview10'

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


# SIG # Begin signature block
# MIInzgYJKoZIhvcNAQcCoIInvzCCJ7sCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBKg3tAVaULIWo1
# LxLYm4dFNux2cHAa8PuAgpIFe+YZ1qCCDYUwggYDMIID66ADAgECAhMzAAADTU6R
# phoosHiPAAAAAANNMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjMwMzE2MTg0MzI4WhcNMjQwMzE0MTg0MzI4WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDUKPcKGVa6cboGQU03ONbUKyl4WpH6Q2Xo9cP3RhXTOa6C6THltd2RfnjlUQG+
# Mwoy93iGmGKEMF/jyO2XdiwMP427j90C/PMY/d5vY31sx+udtbif7GCJ7jJ1vLzd
# j28zV4r0FGG6yEv+tUNelTIsFmmSb0FUiJtU4r5sfCThvg8dI/F9Hh6xMZoVti+k
# bVla+hlG8bf4s00VTw4uAZhjGTFCYFRytKJ3/mteg2qnwvHDOgV7QSdV5dWdd0+x
# zcuG0qgd3oCCAjH8ZmjmowkHUe4dUmbcZfXsgWlOfc6DG7JS+DeJak1DvabamYqH
# g1AUeZ0+skpkwrKwXTFwBRltAgMBAAGjggGCMIIBfjAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUId2Img2Sp05U6XI04jli2KohL+8w
# VAYDVR0RBE0wS6RJMEcxLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJh
# dGlvbnMgTGltaXRlZDEWMBQGA1UEBRMNMjMwMDEyKzUwMDUxNzAfBgNVHSMEGDAW
# gBRIbmTlUAXTgqoXNzcitW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8v
# d3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIw
# MTEtMDctMDguY3JsMGEGCCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDEx
# XzIwMTEtMDctMDguY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIB
# ACMET8WuzLrDwexuTUZe9v2xrW8WGUPRQVmyJ1b/BzKYBZ5aU4Qvh5LzZe9jOExD
# YUlKb/Y73lqIIfUcEO/6W3b+7t1P9m9M1xPrZv5cfnSCguooPDq4rQe/iCdNDwHT
# 6XYW6yetxTJMOo4tUDbSS0YiZr7Mab2wkjgNFa0jRFheS9daTS1oJ/z5bNlGinxq
# 2v8azSP/GcH/t8eTrHQfcax3WbPELoGHIbryrSUaOCphsnCNUqUN5FbEMlat5MuY
# 94rGMJnq1IEd6S8ngK6C8E9SWpGEO3NDa0NlAViorpGfI0NYIbdynyOB846aWAjN
# fgThIcdzdWFvAl/6ktWXLETn8u/lYQyWGmul3yz+w06puIPD9p4KPiWBkCesKDHv
# XLrT3BbLZ8dKqSOV8DtzLFAfc9qAsNiG8EoathluJBsbyFbpebadKlErFidAX8KE
# usk8htHqiSkNxydamL/tKfx3V/vDAoQE59ysv4r3pE+zdyfMairvkFNNw7cPn1kH
# Gcww9dFSY2QwAxhMzmoM0G+M+YvBnBu5wjfxNrMRilRbxM6Cj9hKFh0YTwba6M7z
# ntHHpX3d+nabjFm/TnMRROOgIXJzYbzKKaO2g1kWeyG2QtvIR147zlrbQD4X10Ab
# rRg9CpwW7xYxywezj+iNAc+QmFzR94dzJkEPUSCJPsTFMIIHejCCBWKgAwIBAgIK
# YQ6Q0gAAAAAAAzANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlm
# aWNhdGUgQXV0aG9yaXR5IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEw
# OTA5WjB+MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYD
# VQQDEx9NaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG
# 9w0BAQEFAAOCAg8AMIICCgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+la
# UKq4BjgaBEm6f8MMHt03a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc
# 6Whe0t+bU7IKLMOv2akrrnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4D
# dato88tt8zpcoRb0RrrgOGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+
# lD3v++MrWhAfTVYoonpy4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nk
# kDstrjNYxbc+/jLTswM9sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6
# A4aN91/w0FK/jJSHvMAhdCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmd
# X4jiJV3TIUs+UsS1Vz8kA/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL
# 5zmhD+kjSbwYuER8ReTBw3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zd
# sGbiwZeBe+3W7UvnSSmnEyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3
# T8HhhUSJxAlMxdSlQy90lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS
# 4NaIjAsCAwEAAaOCAe0wggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRI
# bmTlUAXTgqoXNzcitW2oynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTAL
# BgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBD
# uRQFTuHqp8cx0SOJNDBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jv
# c29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3JsMF4GCCsGAQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3J0MIGfBgNVHSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEF
# BQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1h
# cnljcHMuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkA
# YwB5AF8AcwB0AGEAdABlAG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn
# 8oalmOBUeRou09h0ZyKbC5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7
# v0epo/Np22O/IjWll11lhJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0b
# pdS1HXeUOeLpZMlEPXh6I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/
# KmtYSWMfCWluWpiW5IP0wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvy
# CInWH8MyGOLwxS3OW560STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBp
# mLJZiWhub6e3dMNABQamASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJi
# hsMdYzaXht/a8/jyFqGaJ+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYb
# BL7fQccOKO7eZS/sl/ahXJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbS
# oqKfenoi+kiVH6v7RyOA9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sL
# gOppO6/8MO0ETI7f33VtY5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtX
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGZ8wghmbAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAANNTpGmGiiweI8AAAAA
# A00wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEINbV
# rxQMfaU7YvstrgDR0vvDEc4/5pqEbLSQf79AIe4zMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAzbFTTxmA908HXqk7H2ZBbd8eGtY9Fey/CdDM
# ns/Y3UPZmL5RIxtVuTtwvYFWU3cDD8LlK6a5ctHIuguS1Q5lM9Vqbgu0/VQVC6rQ
# hTkA2dCCLD8TypJvOFKGkMmNgMhBkK/kJizOsTTrVAzW/w220iTTexMQF+jMKj1b
# IB9/VJT5pPLpE1bcJ3k2lJ5dTn4r2LW/ey02RIsnWh847WRZ+BvNOtySzwQhHGGP
# aHIZFmIU6n3JgE+P/At1VhSnKSIGV5XmAdj7qANTN+zGY/+LPOQLZwpypugu99pQ
# jwYMtHRkhjLxqBS/LfwfrzSiHG6Cf+wUm5LuAqFZL7dVJLEaSqGCFykwghclBgor
# BgEEAYI3AwMBMYIXFTCCFxEGCSqGSIb3DQEHAqCCFwIwghb+AgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFZBgsqhkiG9w0BCRABBKCCAUgEggFEMIIBQAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCC5G9KHQgJRjRVcMSk0KPvwNYj1glPniDPL
# Jn6zUCH28wIGZGDcmcfBGBMyMDIzMDUxNjE1NDM1My4zMjlaMASAAgH0oIHYpIHV
# MIHSMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQL
# EyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsT
# HVRoYWxlcyBUU1MgRVNOOjE3OUUtNEJCMC04MjQ2MSUwIwYDVQQDExxNaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIReDCCBycwggUPoAMCAQICEzMAAAG1rRrf
# 14VwbRMAAQAAAbUwDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTAwHhcNMjIwOTIwMjAyMjExWhcNMjMxMjE0MjAyMjExWjCB0jELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9z
# b2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjoxNzlFLTRCQjAtODI0NjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAJcL
# CrhlXoLCjYmFxcFPgkh57dmuz31sNsj8IlvmEZRCbB94mxSIj35P8m5TKfCRmp7b
# vuw4v/t3ucFjf52yVCDFIxFiZ3PCTI6D5hwlrDLSTrkf9UbuGmtUa8ULSHpatPfE
# wZeJOzbBBPO5e6ihZsvIsBjUI5MK9GzLuAScMuwVF4lx3oDklPfdq30OMTWaMc57
# +Nky0LHPTZnAauVrJZKlQE3HPD0n4ASxKXRtQ6dsKjcOCayRcCTQNW3800nGAAXO
# bJkWQYLD+CYiv/Ala5aHIXhMkKJ45t6xbba6IwK3klJ4sQC7vaQ67ASOA1Dxht+K
# CG4niNaKhZf8ZOwPu7jPJOKPInzFVjU2nM2z5XQ2LZ+oQa3u69uURA+LnnAsT/A8
# ct+GD1BJVpZTz9ywF6eXDMEY8fhFs4xLSCxCl7gHH8a1wk8MmIZuVzcwgmWIeP4B
# dlNsv22H3pCqWqBWMJKGXk+mcaEG1+Sn7YI/rWZBVdtVL2SJCem9+Gv+OHba7Cun
# Yk5lZzUzPSej+hIZZNrH3FMGxyBi/JmKnSjosneEcTgpkr3BTZGRIK5OePJhwmw2
# 08jvcUszdRJFsW6fJ/yx1Z2fX6eYSCxp7ZDM2g+Wl0QkMh0iIbD7Ue0P6yqB8oxa
# oLRjvX7Z8WL8cza2ynjAs8JnKsDK1+h3MXtEnimfAgMBAAGjggFJMIIBRTAdBgNV
# HQ4EFgQUbFCG2YKGVV1V1VkF9DpNVTtmx1MwHwYDVR0jBBgwFoAUn6cVXQBeYl2D
# 9OXSZacbUzUZ6XIwXwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUy
# MDIwMTAoMSkuY3JsMGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1l
# LVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADAWBgNVHSUB
# Af8EDDAKBggrBgEFBQcDCDAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQELBQAD
# ggIBAJBRjqcoyldrNrAPsE6g8A3YadJhaz7YlOKzdzqJ01qm/OTOlh9fXPz+de8b
# oywoofx5ZT+cSlpl5wCEVdfzUA5CQS0nS02/zULXE9RVhkOwjE565/bS2caiBbSl
# cpb0Dcod9Qv6pAvEJjacs2pDtBt/LjhoDpCfRKuJwPu0MFX6Gw5YIFrhKc3RZ0Xc
# ly99oDqkr6y4xSqb+ChFamgU4msQlmQ5SIRt2IFM2u3JxuWdkgP33jKvyIldOgM1
# GnWcOl4HE66l5hJhNLTJnZeODDBQt8BlPQFXhQlinQ/Vjp2ANsx4Plxdi0FbaNFW
# LRS3enOg0BXJgd/BrzwilWEp/K9dBKF7kTfoEO4S3IptdnrDp1uBeGxwph1k1Vng
# BoD4kiLRx0XxiixFGZqLVTnRT0fMIrgA0/3x0lwZJHaS9drb4BBhC3k858xbpWde
# m/zb+nbW4EkWa3nrCQTSqU43WI7vxqp5QJKX5S+idMMZPee/1FWJ5o40WOtY1/dE
# BkJgc5vb7P/tm49Nl8f2118vL6ue45jV0NrnzmiZt5wHA9qjmkslxDo/ZqoTLeLX
# bzIx4YjT5XX49EOyqtR4HUQaylpMwkDYuLbPB0SQYqTWlaVn1OwXEZ/AXmM3S6CM
# 8ESw7Wrc+mgYaN6A/21x62WoMaazOTLDAf61X2+V59WEu/7hMIIHcTCCBVmgAwIB
# AgITMwAAABXF52ueAptJmQAAAAAAFTANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UE
# BhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAc
# BgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0
# IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMjEwOTMwMTgyMjI1
# WhcNMzAwOTMwMTgzMjI1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCC
# AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAOThpkzntHIhC3miy9ckeb0O
# 1YLT/e6cBwfSqWxOdcjKNVf2AX9sSuDivbk+F2Az/1xPx2b3lVNxWuJ+Slr+uDZn
# hUYjDLWNE893MsAQGOhgfWpSg0S3po5GawcU88V29YZQ3MFEyHFcUTE3oAo4bo3t
# 1w/YJlN8OWECesSq/XJprx2rrPY2vjUmZNqYO7oaezOtgFt+jBAcnVL+tuhiJdxq
# D89d9P6OU8/W7IVWTe/dvI2k45GPsjksUZzpcGkNyjYtcI4xyDUoveO0hyTD4MmP
# frVUj9z6BVWYbWg7mka97aSueik3rMvrg0XnRm7KMtXAhjBcTyziYrLNueKNiOSW
# rAFKu75xqRdbZ2De+JKRHh09/SDPc31BmkZ1zcRfNN0Sidb9pSB9fvzZnkXftnIv
# 231fgLrbqn427DZM9ituqBJR6L8FA6PRc6ZNN3SUHDSCD/AQ8rdHGO2n6Jl8P0zb
# r17C89XYcz1DTsEzOUyOArxCaC4Q6oRRRuLRvWoYWmEBc8pnol7XKHYC4jMYcten
# IPDC+hIK12NvDMk2ZItboKaDIV1fMHSRlJTYuVD5C4lh8zYGNRiER9vcG9H9stQc
# xWv2XFJRXRLbJbqvUAV6bMURHXLvjflSxIUXk8A8FdsaN8cIFRg/eKtFtvUeh17a
# j54WcmnGrnu3tz5q4i6tAgMBAAGjggHdMIIB2TASBgkrBgEEAYI3FQEEBQIDAQAB
# MCMGCSsGAQQBgjcVAgQWBBQqp1L+ZMSavoKRPEY1Kc8Q/y8E7jAdBgNVHQ4EFgQU
# n6cVXQBeYl2D9OXSZacbUzUZ6XIwXAYDVR0gBFUwUzBRBgwrBgEEAYI3TIN9AQEw
# QTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9E
# b2NzL1JlcG9zaXRvcnkuaHRtMBMGA1UdJQQMMAoGCCsGAQUFBwMIMBkGCSsGAQQB
# gjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/
# MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJ
# oEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01p
# Y1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYB
# BQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9v
# Q2VyQXV0XzIwMTAtMDYtMjMuY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQCdVX38Kq3h
# LB9nATEkW+Geckv8qW/qXBS2Pk5HZHixBpOXPTEztTnXwnE2P9pkbHzQdTltuw8x
# 5MKP+2zRoZQYIu7pZmc6U03dmLq2HnjYNi6cqYJWAAOwBb6J6Gngugnue99qb74p
# y27YP0h1AdkY3m2CDPVtI1TkeFN1JFe53Z/zjj3G82jfZfakVqr3lbYoVSfQJL1A
# oL8ZthISEV09J+BAljis9/kpicO8F7BUhUKz/AyeixmJ5/ALaoHCgRlCGVJ1ijbC
# HcNhcy4sa3tuPywJeBTpkbKpW99Jo3QMvOyRgNI95ko+ZjtPu4b6MhrZlvSP9pEB
# 9s7GdP32THJvEKt1MMU0sHrYUP4KWN1APMdUbZ1jdEgssU5HLcEUBHG/ZPkkvnNt
# yo4JvbMBV0lUZNlz138eW0QBjloZkWsNn6Qo3GcZKCS6OEuabvshVGtqRRFHqfG3
# rsjoiV5PndLQTHa1V1QJsWkBRH58oWFsc/4Ku+xBZj1p/cvBQUl+fpO+y/g75LcV
# v7TOPqUxUYS8vwLBgqJ7Fx0ViY1w/ue10CgaiQuPNtq6TPmb/wrpNPgkNWcr4A24
# 5oyZ1uEi6vAnQj0llOZ0dFtq0Z4+7X6gMTN9vMvpe784cETRkPHIqzqKOghif9lw
# Y1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAtQwggI9AgEBMIIBAKGB2KSB1TCB
# 0jELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMk
# TWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjoxNzlFLTRCQjAtODI0NjElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUAjTCfa9dUWY9D1rt7
# pPmkBxdyLFWggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAN
# BgkqhkiG9w0BAQUFAAIFAOgN/g0wIhgPMjAyMzA1MTYyMTA1MTdaGA8yMDIzMDUx
# NzIxMDUxN1owdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA6A3+DQIBADAHAgEAAgIX
# nDAHAgEAAgIRdTAKAgUA6A9PjQIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEE
# AYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GB
# AD2x7ufaB6DzezExFvWMdhdqfwlw63j58Dsjg9aK7+B5yJrzHDgVZn1QmJ1G+6U9
# zpvq2fGIuVwKazgnPJF8pp1y0xuEUEjw7Tb58Ybz6PMznZr0GvJVtO1j4oFIIRTj
# 8FdlYWrIvRGQWrofopU6k69Akuw+6R88/Ifv2XXndHUEMYIEDTCCBAkCAQEwgZMw
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAG1rRrf14VwbRMAAQAA
# AbUwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRAB
# BDAvBgkqhkiG9w0BCQQxIgQg5NR3YtCuqAW8t+iIAc2ervHB6Z2R4GKiXqLJzGxY
# E1QwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCAnyg01LWhnFon2HNzlZyKa
# e2JJ9EvCXJVc65QIBfHIgzCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBD
# QSAyMDEwAhMzAAABta0a39eFcG0TAAEAAAG1MCIEIJVlG6g3Nw+3AcXVdxw4btcm
# zgNVoBZb1/dbzN9N4qjeMA0GCSqGSIb3DQEBCwUABIICACEXqox+7pjlEXPMztSa
# XGHFHpzY6B8A6o+qtovt/w4X4151b6a1TVuCj1F+iYNkSOTvWR9UhiP19x4deisc
# Xqrnv8aTzY5XZ/q5PiV5wrdFSILR/XAw/uWa+cLbPrSCegnWzPCibocEmZtUY6rM
# ijJO5j222kIkK4ATlcvHf3BwarswDpCt/cIFwZOSeAEhisBrBTHJjT3/cJxzKXOx
# LVSeV56GcI5KLp95PsnvvFMENvdhETnu0rWF+ghUyxE3S+sUuEflfIEVU2XtFCZa
# 2hIgtMXvX9qCP9OzSaD/RNVfQBzZJtD/A5ts4LUujCkc04JkVrGnuvKTvAEJXZF8
# b++/a0UAgBFiotF38hSKSZ8lJ9UFSVzKvpMEBI35bCBnjzVOjcu0JDC3FN652Oza
# g3j8h0Fxo0R2qOck/5E0fWDA3mKq3VN0MH4olLEsSdZbRZPtZOEUPNDaLxXX26SN
# zpOluisAxs0nNdWmlwMSjaj0pK+LILzL9Ktv50kW9a1iEKpiJcIT01LRAhULRE/2
# omV4doTuCH0CottbA5GzkTBaNznZLgYxSTcOWmMnMkjihamuwHk45GKdiCMdnUoe
# CTSgXofqHyW0zcgUqCwSHXE0MX7HMGyy7/9e53L8jZ5zhmCM5zqaiXdOGL99VJeP
# YoCxZi1Ro1b4wKZQ78+2D88W
# SIG # End signature block
