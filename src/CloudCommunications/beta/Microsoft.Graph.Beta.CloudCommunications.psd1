#
# Module manifest for module 'Microsoft.Graph.Beta.CloudCommunications'
#
# Generated by: Microsoft Corporation
#
# Generated on: 12/5/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Beta.CloudCommunications.psm1'

# Version number of this module.
ModuleVersion = '2.11.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'f07aeb05-f355-4116-a587-f725d4797aa2'

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
RequiredModules = @(@{ModuleName = 'Microsoft.Graph.Authentication'; RequiredVersion = '2.11.0'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = './bin/Microsoft.Graph.Beta.CloudCommunications.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Beta.CloudCommunications.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-MgBetaCommunicationCallLargeGalleryView', 
               'Clear-MgBetaCommunicationPresence', 
               'Clear-MgBetaCommunicationPresenceUserPreferredPresence', 
               'Get-MgBetaCommunicationCall', 
               'Get-MgBetaCommunicationCallAudioRoutingGroup', 
               'Get-MgBetaCommunicationCallAudioRoutingGroupCount', 
               'Get-MgBetaCommunicationCallContentSharingSession', 
               'Get-MgBetaCommunicationCallContentSharingSessionCount', 
               'Get-MgBetaCommunicationCallCount', 
               'Get-MgBetaCommunicationCallOperation', 
               'Get-MgBetaCommunicationCallOperationCount', 
               'Get-MgBetaCommunicationCallParticipant', 
               'Get-MgBetaCommunicationCallParticipantCount', 
               'Get-MgBetaCommunicationCallRecord', 
               'Get-MgBetaCommunicationCallRecordCount', 
               'Get-MgBetaCommunicationCallRecordOrganizerV2', 
               'Get-MgBetaCommunicationCallRecordParticipant', 
               'Get-MgBetaCommunicationCallRecordParticipantV2', 
               'Get-MgBetaCommunicationCallRecordPstnBlockedUserLog', 
               'Get-MgBetaCommunicationCallRecordPstnOnlineMeetingDialoutReport', 
               'Get-MgBetaCommunicationCallRecordSession', 
               'Get-MgBetaCommunicationCallRecordSessionCount', 
               'Get-MgBetaCommunicationCallRecordSessionSegmentCount', 
               'Get-MgBetaCommunicationCallRecordSmLog', 
               'Get-MgBetaCommunicationOnlineMeeting', 
               'Get-MgBetaCommunicationOnlineMeetingAlternativeRecording', 
               'Get-MgBetaCommunicationOnlineMeetingAttendanceReport', 
               'Get-MgBetaCommunicationOnlineMeetingAttendanceReportAttendanceRecord', 
               'Get-MgBetaCommunicationOnlineMeetingAttendanceReportAttendanceRecordCount', 
               'Get-MgBetaCommunicationOnlineMeetingAttendanceReportCount', 
               'Get-MgBetaCommunicationOnlineMeetingAttendeeReport', 
               'Get-MgBetaCommunicationOnlineMeetingBroadcastRecording', 
               'Get-MgBetaCommunicationOnlineMeetingCount', 
               'Get-MgBetaCommunicationOnlineMeetingRecording', 
               'Get-MgBetaCommunicationOnlineMeetingRecordingContent', 
               'Get-MgBetaCommunicationOnlineMeetingRecordingCount', 
               'Get-MgBetaCommunicationOnlineMeetingRecordingDelta', 
               'Get-MgBetaCommunicationOnlineMeetingRegistration', 
               'Get-MgBetaCommunicationOnlineMeetingRegistrationCustomQuestion', 
               'Get-MgBetaCommunicationOnlineMeetingRegistrationCustomQuestionCount', 
               'Get-MgBetaCommunicationOnlineMeetingRegistrationRegistrant', 
               'Get-MgBetaCommunicationOnlineMeetingRegistrationRegistrantCount', 
               'Get-MgBetaCommunicationOnlineMeetingTranscript', 
               'Get-MgBetaCommunicationOnlineMeetingTranscriptContent', 
               'Get-MgBetaCommunicationOnlineMeetingTranscriptCount', 
               'Get-MgBetaCommunicationOnlineMeetingTranscriptDelta', 
               'Get-MgBetaCommunicationOnlineMeetingTranscriptMetadataContent', 
               'Get-MgBetaCommunicationOnlineMeetingVirtualAppointmentJoinWebUrl', 
               'Get-MgBetaCommunicationPresence', 
               'Get-MgBetaCommunicationPresenceByUserId', 
               'Get-MgBetaCommunicationPresenceCount', 
               'Get-MgBetaUserOnlineMeeting', 
               'Get-MgBetaUserOnlineMeetingAlternativeRecording', 
               'Get-MgBetaUserOnlineMeetingAttendanceReport', 
               'Get-MgBetaUserOnlineMeetingAttendanceReportAttendanceRecord', 
               'Get-MgBetaUserOnlineMeetingAttendanceReportAttendanceRecordCount', 
               'Get-MgBetaUserOnlineMeetingAttendanceReportCount', 
               'Get-MgBetaUserOnlineMeetingAttendeeReport', 
               'Get-MgBetaUserOnlineMeetingBroadcastRecording', 
               'Get-MgBetaUserOnlineMeetingCount', 
               'Get-MgBetaUserOnlineMeetingRecording', 
               'Get-MgBetaUserOnlineMeetingRecordingContent', 
               'Get-MgBetaUserOnlineMeetingRecordingCount', 
               'Get-MgBetaUserOnlineMeetingRegistration', 
               'Get-MgBetaUserOnlineMeetingRegistrationCustomQuestion', 
               'Get-MgBetaUserOnlineMeetingRegistrationCustomQuestionCount', 
               'Get-MgBetaUserOnlineMeetingRegistrationRegistrant', 
               'Get-MgBetaUserOnlineMeetingRegistrationRegistrantCount', 
               'Get-MgBetaUserOnlineMeetingTranscript', 
               'Get-MgBetaUserOnlineMeetingTranscriptContent', 
               'Get-MgBetaUserOnlineMeetingTranscriptCount', 
               'Get-MgBetaUserOnlineMeetingTranscriptMetadataContent', 
               'Get-MgBetaUserPresence', 'Invoke-MgBetaAnswerCommunicationCall', 
               'Invoke-MgBetaCreateOrGetCommunicationOnlineMeeting', 
               'Invoke-MgBetaInviteCommunicationCallParticipant', 
               'Invoke-MgBetaKeepCommunicationCallAlive', 
               'Invoke-MgBetaLogCommunicationCallTeleconferenceDeviceQuality', 
               'Invoke-MgBetaMuteAllCommunicationCallParticipant', 
               'Invoke-MgBetaMuteCommunicationCall', 
               'Invoke-MgBetaMuteCommunicationCallParticipant', 
               'Invoke-MgBetaPlayCommunicationCallPrompt', 
               'Invoke-MgBetaRecordCommunicationCall', 
               'Invoke-MgBetaRecordCommunicationCallResponse', 
               'Invoke-MgBetaRedirectCommunicationCall', 
               'Invoke-MgBetaRejectCommunicationCall', 
               'Invoke-MgBetaSubscribeCommunicationCallToTone', 
               'Invoke-MgBetaUnmuteCommunicationCall', 
               'Move-MgBetaCommunicationCall', 'New-MgBetaCommunicationCall', 
               'New-MgBetaCommunicationCallAudioRoutingGroup', 
               'New-MgBetaCommunicationCallContentSharingSession', 
               'New-MgBetaCommunicationCallOperation', 
               'New-MgBetaCommunicationCallParticipant', 
               'New-MgBetaCommunicationCallRecordParticipantV2', 
               'New-MgBetaCommunicationCallRecordSession', 
               'New-MgBetaCommunicationOnlineMeeting', 
               'New-MgBetaCommunicationOnlineMeetingAttendanceReport', 
               'New-MgBetaCommunicationOnlineMeetingAttendanceReportAttendanceRecord', 
               'New-MgBetaCommunicationOnlineMeetingRecording', 
               'New-MgBetaCommunicationOnlineMeetingRegistrationCustomQuestion', 
               'New-MgBetaCommunicationOnlineMeetingRegistrationRegistrant', 
               'New-MgBetaCommunicationOnlineMeetingTranscript', 
               'New-MgBetaCommunicationPresence', 'New-MgBetaUserOnlineMeeting', 
               'New-MgBetaUserOnlineMeetingAttendanceReport', 
               'New-MgBetaUserOnlineMeetingAttendanceReportAttendanceRecord', 
               'New-MgBetaUserOnlineMeetingRecording', 
               'New-MgBetaUserOnlineMeetingRegistrationCustomQuestion', 
               'New-MgBetaUserOnlineMeetingRegistrationRegistrant', 
               'New-MgBetaUserOnlineMeetingTranscript', 
               'Remove-MgBetaCommunicationCall', 
               'Remove-MgBetaCommunicationCallAudioRoutingGroup', 
               'Remove-MgBetaCommunicationCallContentSharingSession', 
               'Remove-MgBetaCommunicationCallOperation', 
               'Remove-MgBetaCommunicationCallParticipant', 
               'Remove-MgBetaCommunicationCallRecordOrganizerV2', 
               'Remove-MgBetaCommunicationCallRecordParticipantV2', 
               'Remove-MgBetaCommunicationCallRecordSession', 
               'Remove-MgBetaCommunicationOnlineMeeting', 
               'Remove-MgBetaCommunicationOnlineMeetingAttendanceReport', 
               'Remove-MgBetaCommunicationOnlineMeetingAttendanceReportAttendanceRecord', 
               'Remove-MgBetaCommunicationOnlineMeetingRecording', 
               'Remove-MgBetaCommunicationOnlineMeetingRegistration', 
               'Remove-MgBetaCommunicationOnlineMeetingRegistrationCustomQuestion', 
               'Remove-MgBetaCommunicationOnlineMeetingRegistrationRegistrant', 
               'Remove-MgBetaCommunicationOnlineMeetingTranscript', 
               'Remove-MgBetaCommunicationPresence', 
               'Remove-MgBetaUserOnlineMeeting', 
               'Remove-MgBetaUserOnlineMeetingAttendanceReport', 
               'Remove-MgBetaUserOnlineMeetingAttendanceReportAttendanceRecord', 
               'Remove-MgBetaUserOnlineMeetingRecording', 
               'Remove-MgBetaUserOnlineMeetingRegistration', 
               'Remove-MgBetaUserOnlineMeetingRegistrationCustomQuestion', 
               'Remove-MgBetaUserOnlineMeetingRegistrationRegistrant', 
               'Remove-MgBetaUserOnlineMeetingTranscript', 
               'Remove-MgBetaUserPresence', 
               'Rename-MgBetaCommunicationCallScreenSharingRole', 
               'Send-MgBetaCommunicationCallDtmfTone', 
               'Send-MgBetaCommunicationOnlineMeetingVirtualAppointmentReminderSm', 
               'Send-MgBetaCommunicationOnlineMeetingVirtualAppointmentSm', 
               'Set-MgBetaCommunicationOnlineMeetingAlternativeRecording', 
               'Set-MgBetaCommunicationOnlineMeetingAttendeeReport', 
               'Set-MgBetaCommunicationOnlineMeetingBroadcastRecording', 
               'Set-MgBetaCommunicationOnlineMeetingRecording', 
               'Set-MgBetaCommunicationOnlineMeetingRecordingContent', 
               'Set-MgBetaCommunicationOnlineMeetingTranscriptContent', 
               'Set-MgBetaCommunicationOnlineMeetingTranscriptMetadataContent', 
               'Set-MgBetaCommunicationPresence', 
               'Set-MgBetaCommunicationPresenceStatusMessage', 
               'Set-MgBetaCommunicationPresenceUserPreferredPresence', 
               'Set-MgBetaUserOnlineMeetingAlternativeRecording', 
               'Set-MgBetaUserOnlineMeetingAttendeeReport', 
               'Set-MgBetaUserOnlineMeetingBroadcastRecording', 
               'Set-MgBetaUserOnlineMeetingRecording', 
               'Set-MgBetaUserOnlineMeetingRecordingContent', 
               'Set-MgBetaUserOnlineMeetingTranscriptContent', 
               'Set-MgBetaUserOnlineMeetingTranscriptMetadataContent', 
               'Start-MgBetaCommunicationCallParticipantHoldMusic', 
               'Stop-MgBetaCommunicationCallMediaProcessing', 
               'Stop-MgBetaCommunicationCallParticipantHoldMusic', 
               'Update-MgBetaCommunicationCallAudioRoutingGroup', 
               'Update-MgBetaCommunicationCallContentSharingSession', 
               'Update-MgBetaCommunicationCallOperation', 
               'Update-MgBetaCommunicationCallParticipant', 
               'Update-MgBetaCommunicationCallRecordingStatus', 
               'Update-MgBetaCommunicationCallRecordOrganizerV2', 
               'Update-MgBetaCommunicationCallRecordParticipantV2', 
               'Update-MgBetaCommunicationCallRecordSession', 
               'Update-MgBetaCommunicationOnlineMeeting', 
               'Update-MgBetaCommunicationOnlineMeetingAttendanceReport', 
               'Update-MgBetaCommunicationOnlineMeetingAttendanceReportAttendanceRecord', 
               'Update-MgBetaCommunicationOnlineMeetingRecording', 
               'Update-MgBetaCommunicationOnlineMeetingRegistration', 
               'Update-MgBetaCommunicationOnlineMeetingRegistrationCustomQuestion', 
               'Update-MgBetaCommunicationOnlineMeetingRegistrationRegistrant', 
               'Update-MgBetaCommunicationOnlineMeetingTranscript', 
               'Update-MgBetaCommunicationPresence', 
               'Update-MgBetaUserOnlineMeeting', 
               'Update-MgBetaUserOnlineMeetingAttendanceReport', 
               'Update-MgBetaUserOnlineMeetingAttendanceReportAttendanceRecord', 
               'Update-MgBetaUserOnlineMeetingRecording', 
               'Update-MgBetaUserOnlineMeetingRegistration', 
               'Update-MgBetaUserOnlineMeetingRegistrationCustomQuestion', 
               'Update-MgBetaUserOnlineMeetingRegistrationRegistrant', 
               'Update-MgBetaUserOnlineMeetingTranscript', 
               'Update-MgBetaUserPresence'

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
        IconUri = 'https://raw.githubusercontent.com/microsoftgraph/msgraph-sdk-powershell/dev/docs/images/graph_color256.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'See https://aka.ms/GraphPowerShell-Release.'

        # Prerelease string of this module
        # Prerelease = ''

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
# MIInvgYJKoZIhvcNAQcCoIInrzCCJ6sCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDHVgNUD5fM8CTQ
# K2hHB9o3GnmaCr3crLNX7xajmy5n9KCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# /Xmfwb1tbWrJUnMTDXpQzTGCGZ4wghmaAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAANOtTx6wYRv6ysAAAAAA04wDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIJyyPASIponrb2kdLm4iGMmT
# 0/XYB3g8HGKLMggxHVdSMEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAIPANLxWEokBOpkBcfQoIpTKujRo2NJSC6e8Fp0PIW9+8rH1Cz/bCtIK/
# fgB5MO9bvNCeu6vEjmjqH7E/Ga0NI/E2ykARW9CO++wnqm+PR/5aPmiqSN3ABjaX
# 3m8kM+EsQDUjFXB6GLNPdBtEgaSwwxrhVd3sNcmF7iGZ2lu4XaXxR0zTRoWWziGH
# Yp3BOmjoHEdunYfEk8Ytnf8l4376RZ2HPA2mNwyMIcYBd21ij2n7xpJkwJN0PuI3
# lOoBO7ufG6IheLVIxG0tScTv5lNu5tiegF65bVOqOHn9BBepbJbcCCWjfx+qtrGz
# 87SD+T8quDFtoxr8Qu4WcdqaNOoRjaGCFygwghckBgorBgEEAYI3AwMBMYIXFDCC
# FxAGCSqGSIb3DQEHAqCCFwEwghb9AgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFYBgsq
# hkiG9w0BCRABBKCCAUcEggFDMIIBPwIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCA+NTIx8FzfCJhjZ9ljyCxQhEvfO4wIFTT47OWL3q+PRgIGZV4e1Yma
# GBIyMDIzMTIwNTIwMzgxNS44NFowBIACAfSggdikgdUwgdIxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVs
# YW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046
# MTc5RS00QkIwLTgyNDYxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNl
# cnZpY2WgghF4MIIHJzCCBQ+gAwIBAgITMwAAAeDU/B8TFR9+XQABAAAB4DANBgkq
# hkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
# MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
# MSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMzEw
# MTIxOTA3MTlaFw0yNTAxMTAxOTA3MTlaMIHSMQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVy
# YXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjE3OUUtNEJC
# MC04MjQ2MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEArIec86HFu9EBOcaNv/p+4GGH
# dkvOi0DECB0tpn/OREVR15IrPI23e2qiswrsYO9xd0qz6ogxRu96eUf7Dneyw9rq
# tg/vrRm4WsAGt+x6t/SQVrI1dXPBPuNqsk4SOcUwGn7KL67BDZOcm7FzNx4bkUMe
# sgjqwXoXzv2U/rJ1jQEFmRn23f17+y81GJ4DmBSe/9hwz9sgxj9BiZ30XQH55sVi
# L48fgCRdqE2QWArzk4hpGsMa+GfE5r/nMYvs6KKLv4n39AeR0kaV+dF9tDdBcz/n
# +6YE4obgmgVjWeJnlFUfk9PT64KPByqFNue9S18r437IHZv2sRm+nZO/hnBjMR30
# D1Wxgy5mIJJtoUyTvsvBVuSWmfDhodYlcmQRiYm/FFtxOETwVDI6hWRK4pzk5Znb
# 5Yz+PnShuUDS0JTncBq69Q5lGhAGHz2ccr6bmk5cpd1gwn5x64tgXyHnL9xctAw6
# aosnPmXswuobBTTMdX4wQ7wvUWjbMQRDiIvgFfxiScpeiccZBpxIJotmi3aTIlVG
# wVLGfQ+U+8dWnRh2wIzN16LD2MBnsr2zVbGxkYQGsr+huKlfq7GMSnJQD2ZtU+WO
# VvdHgxYjQTbEj80zoXgBzwJ5rHdhYtP5pYJl6qIgwvHLJZmD6LUpjxkTMx41MoIQ
# jnAXXDGqvpPX8xCj7y0CAwEAAaOCAUkwggFFMB0GA1UdDgQWBBRwXhc/bp1X7xK6
# ygDVddDZMNKZ0jAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNV
# HR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2Ny
# bC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYI
# KwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAy
# MDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBYGA1UdJQEB/wQMMAoGCCsGAQUFBwMI
# MA4GA1UdDwEB/wQEAwIHgDANBgkqhkiG9w0BAQsFAAOCAgEAwBPODpH8DSV07syo
# bEPVUmOLnJUDWEdvQdzRiO2/taTFDyLB9+W6VflSzri0Pf7c1PUmSmFbNoBZ/bAp
# 0DDflHG1AbWI43ccRnRfbed17gqD9Z9vHmsQeRn1vMqdH/Y3kDXr7D/WlvAnN19F
# yclPdwvJrCv+RiMxZ3rc4/QaWrvS5rhZQT8+jmlTutBFtYShCjNjbiECo5zC5Fyb
# oJvQkF5M4J5EGe0QqCMp6nilFpC3tv2+6xP3tZ4lx9pWiyaY+2xmxrCCekiNsFrn
# m0d+6TS8ORm1sheNTiavl2ez12dqcF0FLY9jc3eEh8I8Q6zOq7AcuR+QVn/1vHDz
# 95EmV22i6QejXpp8T8Co/+yaYYmHllHSmaBbpBxf7rWt2LmQMlPMIVqgzJjNRLRI
# RvKsNn+nYo64oBg2eCWOI6WWVy3S4lXPZqB9zMaOOwqLYBLVZpe86GBk2YbDjZIU
# HWpqWhrwpq7H1DYccsTyB57/muA6fH3NJt9VRzshxE2h2rpHu/5HP4/pcq06DIKp
# b/6uE+an+fsWrYEZNGRzL/+GZLfanqrKCWvYrg6gkMlfEWzqXBzwPzqqVR4aNTKj
# uFXLlW/ID7LSYacQC4Dzm2w5xQ+XPBYXmy/4Hl/Pfk5bdfhKmTlKI26WcsVE8zlc
# KxIeq9xsLxHerCPbDV68+FnEO40wggdxMIIFWaADAgECAhMzAAAAFcXna54Cm0mZ
# AAAAAAAVMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMDAeFw0yMTA5MzAxODIyMjVaFw0zMDA5MzAxODMyMjVa
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMIICIjANBgkqhkiG9w0BAQEF
# AAOCAg8AMIICCgKCAgEA5OGmTOe0ciELeaLL1yR5vQ7VgtP97pwHB9KpbE51yMo1
# V/YBf2xK4OK9uT4XYDP/XE/HZveVU3Fa4n5KWv64NmeFRiMMtY0Tz3cywBAY6GB9
# alKDRLemjkZrBxTzxXb1hlDcwUTIcVxRMTegCjhuje3XD9gmU3w5YQJ6xKr9cmmv
# Haus9ja+NSZk2pg7uhp7M62AW36MEBydUv626GIl3GoPz130/o5Tz9bshVZN7928
# jaTjkY+yOSxRnOlwaQ3KNi1wjjHINSi947SHJMPgyY9+tVSP3PoFVZhtaDuaRr3t
# pK56KTesy+uDRedGbsoy1cCGMFxPLOJiss254o2I5JasAUq7vnGpF1tnYN74kpEe
# HT39IM9zfUGaRnXNxF803RKJ1v2lIH1+/NmeRd+2ci/bfV+AutuqfjbsNkz2K26o
# ElHovwUDo9Fzpk03dJQcNIIP8BDyt0cY7afomXw/TNuvXsLz1dhzPUNOwTM5TI4C
# vEJoLhDqhFFG4tG9ahhaYQFzymeiXtcodgLiMxhy16cg8ML6EgrXY28MyTZki1ug
# poMhXV8wdJGUlNi5UPkLiWHzNgY1GIRH29wb0f2y1BzFa/ZcUlFdEtsluq9QBXps
# xREdcu+N+VLEhReTwDwV2xo3xwgVGD94q0W29R6HXtqPnhZyacaue7e3PmriLq0C
# AwEAAaOCAd0wggHZMBIGCSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUCBBYE
# FCqnUv5kxJq+gpE8RjUpzxD/LwTuMB0GA1UdDgQWBBSfpxVdAF5iXYP05dJlpxtT
# NRnpcjBcBgNVHSAEVTBTMFEGDCsGAQQBgjdMg30BATBBMD8GCCsGAQUFBwIBFjNo
# dHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL0RvY3MvUmVwb3NpdG9yeS5o
# dG0wEwYDVR0lBAwwCgYIKwYBBQUHAwgwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBD
# AEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZW
# y4/oolxiaNE9lJBb186aGMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5t
# aWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAt
# MDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0y
# My5jcnQwDQYJKoZIhvcNAQELBQADggIBAJ1VffwqreEsH2cBMSRb4Z5yS/ypb+pc
# FLY+TkdkeLEGk5c9MTO1OdfCcTY/2mRsfNB1OW27DzHkwo/7bNGhlBgi7ulmZzpT
# Td2YurYeeNg2LpypglYAA7AFvonoaeC6Ce5732pvvinLbtg/SHUB2RjebYIM9W0j
# VOR4U3UkV7ndn/OOPcbzaN9l9qRWqveVtihVJ9AkvUCgvxm2EhIRXT0n4ECWOKz3
# +SmJw7wXsFSFQrP8DJ6LGYnn8AtqgcKBGUIZUnWKNsIdw2FzLixre24/LAl4FOmR
# sqlb30mjdAy87JGA0j3mSj5mO0+7hvoyGtmW9I/2kQH2zsZ0/fZMcm8Qq3UwxTSw
# ethQ/gpY3UA8x1RtnWN0SCyxTkctwRQEcb9k+SS+c23Kjgm9swFXSVRk2XPXfx5b
# RAGOWhmRaw2fpCjcZxkoJLo4S5pu+yFUa2pFEUep8beuyOiJXk+d0tBMdrVXVAmx
# aQFEfnyhYWxz/gq77EFmPWn9y8FBSX5+k77L+DvktxW/tM4+pTFRhLy/AsGConsX
# HRWJjXD+57XQKBqJC4822rpM+Zv/Cuk0+CQ1ZyvgDbjmjJnW4SLq8CdCPSWU5nR0
# W2rRnj7tfqAxM328y+l7vzhwRNGQ8cirOoo6CGJ/2XBjU02N7oJtpQUQwXEGahC0
# HVUzWLOhcGbyoYIC1DCCAj0CAQEwggEAoYHYpIHVMIHSMQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFu
# ZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjE3
# OUUtNEJCMC04MjQ2MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2
# aWNloiMKAQEwBwYFKw4DAhoDFQBt89HV8FfofFh/I/HzNjMlTl8hDKCBgzCBgKR+
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0GCSqGSIb3DQEBBQUAAgUA
# 6RnAlzAiGA8yMDIzMTIwNTIzMzAzMVoYDzIwMjMxMjA2MjMzMDMxWjB0MDoGCisG
# AQQBhFkKBAExLDAqMAoCBQDpGcCXAgEAMAcCAQACAinDMAcCAQACAhFhMAoCBQDp
# GxIXAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMH
# oSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQADgYEAC/t55KPJFmEAW1T7TqJD
# 78/+uyG7qGrYK0HGMWyRiq/KtRCEGq3ss8LH8veFQgY2rXDj9adTQATCEmmKLHVx
# 8msZB4U2GYQOFkesdGbgg7rd7BC2glVhJeq15e3ZmuljuaT6AKB2POeMB3ZVXkP3
# rqhefMOpIAuegBB/k8d61BoxggQNMIIECQIBATCBkzB8MQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1T
# dGFtcCBQQ0EgMjAxMAITMwAAAeDU/B8TFR9+XQABAAAB4DANBglghkgBZQMEAgEF
# AKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJBDEi
# BCDqVqx3Bl6a5nxV4tOBsZ8cIfxcVINXmt//ZwyUQnA18TCB+gYLKoZIhvcNAQkQ
# Ai8xgeowgecwgeQwgb0EIOPuUr/yOeVtOM+9zvsMIJJvhNkClj2cmbnCGwr/aQrB
# MIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAO
# BgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEm
# MCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAHg1Pwf
# ExUffl0AAQAAAeAwIgQgz8WiCuWycBiI0xHapuT10on6uqdkSsH8/anRvdFGyxEw
# DQYJKoZIhvcNAQELBQAEggIAE9nIEEz12FkuB2/3yRQyoFlN5Dzqm1pNkrN/p9hh
# MC60p3DrCrx5al4/SQPnbxi51xAXEo7qEaZ2bnEvjvpRpMrZtDFvBbnOKPyY+wqt
# yhiMe207/MbPhf66gNOAWry2smrI6bPVbB1QT28VWFRWrDCUOGX9mrF2qdzAVm/p
# NUEYRn/OtB5878LQwv0nGi/mdK2A3mp8PbSSFt1KP46r8BLm708QoUptQos37kFP
# 44FXUAr8IUNjy6yhTRn2ZBikjYxNtH0zigShwQ8JhDLJkzJK3fhY4ueLfENIKYc5
# VXNRl35VER5+v6J9ghkWSxcBYePu1yk0h0Qqi5dZkgRnJ3XRl3lCtuaISce732jD
# iRb+i9L5otjGAAAsoZrTQIp+7gOHS+q3/ZxUrJcTwFP8ewhr9j2ZhDtRcwQeUP99
# 5X3FZ3aihYO+gopEiXCxsP48AxZ9GaH0623oE2pLh82ThWeIcHFEs5AJalLmjbLE
# u/SpVwR3DNOenB7V2w4XLEPQVAErV70CaHNlGYS8VkLYF7CZQcGuCojUXQwlnnbJ
# ruHuXGsVvHOJOjtFbqDBJaRPhITAV2X87S7sNIQthrxCocA2+yRKSTBlgLJrzhen
# x+rurVPwuOBufjAQK/rjE2hXVUAUhArWZGdcl7olOR1w3HPhGNJYU5bMfPsBjjVZ
# sb4=
# SIG # End signature block
