#
# Module manifest for module 'Microsoft.Graph.Beta.DeviceManagement.Enrollment'
#
# Generated by: Microsoft Corporation
#
# Generated on: 5/16/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Beta.DeviceManagement.Enrollment.psm1'

# Version number of this module.
ModuleVersion = '2.0.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'bcc56dcf-0f16-4c61-8a79-45cbf1a84a78'

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
RequiredAssemblies = 
               './bin/Microsoft.Graph.Beta.DeviceManagement.Enrollment.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 
               './Microsoft.Graph.Beta.DeviceManagement.Enrollment.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfile', 
               'Get-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfileCount', 
               'Get-MgBetaDeviceManagementAndroidForWorkEnrollmentProfile', 
               'Get-MgBetaDeviceManagementAndroidForWorkEnrollmentProfileCount', 
               'Get-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfile', 
               'Get-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignment', 
               'Get-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignmentCount', 
               'Get-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileCount', 
               'Get-MgBetaDeviceManagementAutopilotEvent', 
               'Get-MgBetaDeviceManagementAutopilotEventCount', 
               'Get-MgBetaDeviceManagementAutopilotEventPolicyStatusDetail', 
               'Get-MgBetaDeviceManagementAutopilotEventPolicyStatusDetailCount', 
               'Get-MgBetaDeviceManagementConditionalAccessSetting', 
               'Get-MgBetaDeviceManagementDepOnboardingSetting', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingCount', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingDefaultIoEnrollmentProfile', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingDefaultMacOSEnrollmentProfile', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfile', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfileCount', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentity', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentityCount', 
               'Get-MgBetaDeviceManagementDeviceEnrollmentConfiguration', 
               'Get-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignment', 
               'Get-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignmentCount', 
               'Get-MgBetaDeviceManagementDeviceEnrollmentConfigurationCount', 
               'Get-MgBetaDeviceManagementImportedDeviceIdentity', 
               'Get-MgBetaDeviceManagementImportedDeviceIdentityCount', 
               'Get-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentity', 
               'Get-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentityCount', 
               'Get-MgBetaDeviceManagementUserExperienceAnalyticNotAutopilotReadyDeviceCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDevice', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDeviceCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDeviceDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDeviceIntendedDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignment', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignmentCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeviceIdentity', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeviceIdentityCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeviceIdentityDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeviceIdentityIntendedDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotSetting', 
               'Get-MgBetaDeviceManagementWindowsFeatureUpdateProfile', 
               'Get-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignment', 
               'Get-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignmentCount', 
               'Get-MgBetaDeviceManagementWindowsFeatureUpdateProfileCount', 
               'Get-MgBetaRoleManagement', 'Get-MgBetaRoleManagementCloudPc', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespace', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceCount', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceResourceAction', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionAuthenticationContext', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionCount', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionResourceScope', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignment', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentAppScope', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentAppScopeCount', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentCount', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentDirectoryScope', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentDirectoryScopeCount', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentPrincipal', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentPrincipalCount', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentRoleDefinition', 
               'Get-MgBetaRoleManagementCloudPcRoleDefinition', 
               'Get-MgBetaRoleManagementCloudPcRoleDefinitionCount', 
               'Get-MgBetaRoleManagementCloudPcRoleDefinitionInheritPermissionFrom', 
               'Get-MgBetaRoleManagementDeviceManagement', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespace', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceCount', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceAction', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionAuthenticationContext', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionCount', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionResourceScope', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignment', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScope', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScopeCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentDirectoryScope', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentDirectoryScopeCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentPrincipal', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentPrincipalCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentRoleDefinition', 
               'Get-MgBetaRoleManagementDeviceManagementRoleDefinition', 
               'Get-MgBetaRoleManagementDeviceManagementRoleDefinitionCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleDefinitionInheritPermissionFrom', 
               'New-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfile', 
               'New-MgBetaDeviceManagementAndroidForWorkEnrollmentProfile', 
               'New-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfile', 
               'New-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignment', 
               'New-MgBetaDeviceManagementAutopilotEvent', 
               'New-MgBetaDeviceManagementAutopilotEventPolicyStatusDetail', 
               'New-MgBetaDeviceManagementDepOnboardingSetting', 
               'New-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfile', 
               'New-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentity', 
               'New-MgBetaDeviceManagementDeviceEnrollmentConfiguration', 
               'New-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignment', 
               'New-MgBetaDeviceManagementImportedDeviceIdentity', 
               'New-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentity', 
               'New-MgBetaDeviceManagementWindowsAutopilotDeploymentProfile', 
               'New-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDevice', 
               'New-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignment', 
               'New-MgBetaDeviceManagementWindowsAutopilotDeviceIdentity', 
               'New-MgBetaDeviceManagementWindowsFeatureUpdateProfile', 
               'New-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignment', 
               'New-MgBetaRoleManagementCloudPcResourceNamespace', 
               'New-MgBetaRoleManagementCloudPcResourceNamespaceResourceAction', 
               'New-MgBetaRoleManagementCloudPcRoleAssignment', 
               'New-MgBetaRoleManagementCloudPcRoleAssignmentAppScope', 
               'New-MgBetaRoleManagementCloudPcRoleDefinition', 
               'New-MgBetaRoleManagementCloudPcRoleDefinitionInheritPermissionFrom', 
               'New-MgBetaRoleManagementDeviceManagementResourceNamespace', 
               'New-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceAction', 
               'New-MgBetaRoleManagementDeviceManagementRoleAssignment', 
               'New-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScope', 
               'New-MgBetaRoleManagementDeviceManagementRoleDefinition', 
               'New-MgBetaRoleManagementDeviceManagementRoleDefinitionInheritPermissionFrom', 
               'Remove-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfile', 
               'Remove-MgBetaDeviceManagementAndroidForWorkEnrollmentProfile', 
               'Remove-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfile', 
               'Remove-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignment', 
               'Remove-MgBetaDeviceManagementAutopilotEvent', 
               'Remove-MgBetaDeviceManagementAutopilotEventPolicyStatusDetail', 
               'Remove-MgBetaDeviceManagementConditionalAccessSetting', 
               'Remove-MgBetaDeviceManagementDepOnboardingSetting', 
               'Remove-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfile', 
               'Remove-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentity', 
               'Remove-MgBetaDeviceManagementDeviceEnrollmentConfiguration', 
               'Remove-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignment', 
               'Remove-MgBetaDeviceManagementImportedDeviceIdentity', 
               'Remove-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentity', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotDeploymentProfile', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDevice', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignment', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotDeviceIdentity', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotSetting', 
               'Remove-MgBetaDeviceManagementWindowsFeatureUpdateProfile', 
               'Remove-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignment', 
               'Remove-MgBetaRoleManagementCloudPc', 
               'Remove-MgBetaRoleManagementCloudPcResourceNamespace', 
               'Remove-MgBetaRoleManagementCloudPcResourceNamespaceResourceAction', 
               'Remove-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionResourceScope', 
               'Remove-MgBetaRoleManagementCloudPcRoleAssignment', 
               'Remove-MgBetaRoleManagementCloudPcRoleAssignmentAppScope', 
               'Remove-MgBetaRoleManagementCloudPcRoleDefinition', 
               'Remove-MgBetaRoleManagementCloudPcRoleDefinitionInheritPermissionFrom', 
               'Remove-MgBetaRoleManagementDeviceManagement', 
               'Remove-MgBetaRoleManagementDeviceManagementResourceNamespace', 
               'Remove-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceAction', 
               'Remove-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionResourceScope', 
               'Remove-MgBetaRoleManagementDeviceManagementRoleAssignment', 
               'Remove-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScope', 
               'Remove-MgBetaRoleManagementDeviceManagementRoleDefinition', 
               'Remove-MgBetaRoleManagementDeviceManagementRoleDefinitionInheritPermissionFrom', 
               'Update-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfile', 
               'Update-MgBetaDeviceManagementAndroidForWorkEnrollmentProfile', 
               'Update-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfile', 
               'Update-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignment', 
               'Update-MgBetaDeviceManagementAutopilotEvent', 
               'Update-MgBetaDeviceManagementAutopilotEventPolicyStatusDetail', 
               'Update-MgBetaDeviceManagementConditionalAccessSetting', 
               'Update-MgBetaDeviceManagementDepOnboardingSetting', 
               'Update-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfile', 
               'Update-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentity', 
               'Update-MgBetaDeviceManagementDeviceEnrollmentConfiguration', 
               'Update-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignment', 
               'Update-MgBetaDeviceManagementImportedDeviceIdentity', 
               'Update-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentity', 
               'Update-MgBetaDeviceManagementWindowsAutopilotDeploymentProfile', 
               'Update-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDevice', 
               'Update-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignment', 
               'Update-MgBetaDeviceManagementWindowsAutopilotSetting', 
               'Update-MgBetaDeviceManagementWindowsFeatureUpdateProfile', 
               'Update-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignment', 
               'Update-MgBetaRoleManagement', 'Update-MgBetaRoleManagementCloudPc', 
               'Update-MgBetaRoleManagementCloudPcResourceNamespace', 
               'Update-MgBetaRoleManagementCloudPcResourceNamespaceResourceAction', 
               'Update-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionResourceScope', 
               'Update-MgBetaRoleManagementCloudPcRoleAssignment', 
               'Update-MgBetaRoleManagementCloudPcRoleAssignmentAppScope', 
               'Update-MgBetaRoleManagementCloudPcRoleDefinition', 
               'Update-MgBetaRoleManagementCloudPcRoleDefinitionInheritPermissionFrom', 
               'Update-MgBetaRoleManagementDeviceManagement', 
               'Update-MgBetaRoleManagementDeviceManagementResourceNamespace', 
               'Update-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceAction', 
               'Update-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionResourceScope', 
               'Update-MgBetaRoleManagementDeviceManagementRoleAssignment', 
               'Update-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScope', 
               'Update-MgBetaRoleManagementDeviceManagementRoleDefinition', 
               'Update-MgBetaRoleManagementDeviceManagementRoleDefinitionInheritPermissionFrom'

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
# MIIn0QYJKoZIhvcNAQcCoIInwjCCJ74CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAjCZGuFx8xRd55
# jSD+WvanJB1zyblBL+tZXDfyE2GSQaCCDYUwggYDMIID66ADAgECAhMzAAADTU6R
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
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGaIwghmeAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAANNTpGmGiiweI8AAAAA
# A00wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIEhF
# mm+LrvKtEg93OmxMUzHyIy+ctnHuRHqjOCN5JapQMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAeHkPa0e0DjPYGbwBnQtMMdwKJ+hN+FCqOxPI
# kuA6ajlwY1gZHAgY4ZxucNH2WYAN5JHi7ugNmg2kj+s13Iwrs0xEKjtRw3lv6d6d
# sAhkTWeayyp40dEEsM3t+HhqDd3m/QXWTKEkPFAR0PWej3lXFfiwPmrml6/z6Ntz
# TZF7stL4Np9YQUQN+WQ+CK6+4jycFfEFCq0LSLmz3V7PQDyEON5gYy4fqPrJbDjI
# zbu4I7eONIPO92g45uXqXLP5fMM6toAi/e86Qu/ahQKA22oDXItJXFM9TYteKhPN
# U+hCkAmpQsSBw69fykJ6DPqsLkUoqsGfO2rSMqdQtVXJhTO2eqGCFywwghcoBgor
# BgEEAYI3AwMBMYIXGDCCFxQGCSqGSIb3DQEHAqCCFwUwghcBAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFZBgsqhkiG9w0BCRABBKCCAUgEggFEMIIBQAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCAjvoqhCNmbLfVsK6fSoToNRNxEKIo4j0lc
# rKRCh9rYdAIGZD/TfsRQGBMyMDIzMDUxNjE1NDM1My4xMjJaMASAAgH0oIHYpIHV
# MIHSMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQL
# EyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsT
# HVRoYWxlcyBUU1MgRVNOOkQwODItNEJGRC1FRUJBMSUwIwYDVQQDExxNaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIRezCCBycwggUPoAMCAQICEzMAAAG6Hz8Z
# 98F1vXwAAQAAAbowDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTAwHhcNMjIwOTIwMjAyMjE5WhcNMjMxMjE0MjAyMjE5WjCB0jELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9z
# b2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjpEMDgyLTRCRkQtRUVCQTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAIhO
# FYMzkjWAE9UVnXF9hRGv0xBRxc+I5Hu3hxVFXyK3u38xusEb0pLkwjgGtDsaLLbr
# lMxqX3tFb/3BgEPEC3L0wX76gD8zHt+wiBV5mq5BWop29qRrgMJKKCPcpQnSjs9B
# /4XMFFvrpdPicZDv43FLgz9fHqMq0LJDw5JAHGDS30TCY9OF43P4d44Z9lE7CaVS
# 2pJMF3L453MXB5yYK/KDbilhERP1jxn2yl+tGCRguIAsMG0oeOhXaw8uSGOhS6AC
# SHb+ebi0038MFHyoTNhKf+SYo4OpSY3xP4+swBBTKDoYP1wH+CfxG6h9fymBJQPQ
# Zaqfl0riiDLjmDunQtH1GD64Air5k9Jdwhq5wLmSWXjyFVL+IDfOpdixJ6f5o+Mh
# E6H4t31w+prygHmd2UHQ657UGx6FNuzwC+SpAHmV76MZYac4uAhTgaP47P2eeS1o
# ckvyhl9ya+9JzPfMkug3xevzFADWiLRMr066EMV7q3JSRAsnCS9GQ08C4FKPbSh8
# OPM33Lng0ffxANnHAAX/DE7cHcx7l9jaV3Acmkj7oqir4Eh2u5YxwiaTE37XaMum
# X2ES3PJ5NBaXq7YdLJwySD+U9pk/tl4dQ1t/Eeo7uDTliOyQkD8I74xpVB0T31/6
# 7KHfkBkFVvy6wye21V+9IC8uSD++RgD3RwtN2kE/AgMBAAGjggFJMIIBRTAdBgNV
# HQ4EFgQUimLm8QMeJa25j9MWeabI2HSvZOUwHwYDVR0jBBgwFoAUn6cVXQBeYl2D
# 9OXSZacbUzUZ6XIwXwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUy
# MDIwMTAoMSkuY3JsMGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1l
# LVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADAWBgNVHSUB
# Af8EDDAKBggrBgEFBQcDCDAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQELBQAD
# ggIBAF/I8U6hbZhvDcn96nZ6tkbSEjXPvKZ6wroaXcgstEhpgaeEwleLuPXHLzEW
# tuJuYz4eshmhXqFr49lbAcX5SN5/cEsP0xdFayb7U5P94JZd3HjFvpWRNoNBhF3S
# DM0A38sI2H+hjhB/VfX1XcZiei1ROPAyCHcBgHLyQrEu6mnb3HhbIdr8h0Ta7WFy
# lGhLSFW6wmzKusP6aOlmnGSac5NMfla6lRvTYHd28rbbCgfSm1RhTgoZj+W8DTKt
# iEMwubHJ3mIPKmo8xtJIWXPnXq6XKgldrL5cynLMX/0WX65OuWbHV5GTELdfWvGV
# 3DaZrHPUQ/UP31Keqb2xjVCb30LVwgbjIvYS77N1dARkN8F/9pJ1gO4IvZWMwyMl
# KKFGojO1f1wbjSWcA/57tsc+t2blrMWgSNHgzDr01jbPSupRjy3Ht9ZZs4xN02ei
# X3eG297NrtC6l4c/gzn20eqoqWx/uHWxmTgB0F5osBuTHOe77DyEA0uhArGlgKP9
# 1jghgt/OVHoH65g0QqCtgZ+36mnCEg6IOhFoFrCc0fJFGVmb1+17gEe+HRMM7jBk
# 4O06J+IooFrI3e3PJjPrQano/MyE3h+zAuBWGMDRcUlNKCDU7dGnWvH3XWwLrCCI
# cz+3GwRUMsLsDdPW2OVv7v1eEJiMSIZ2P+M7L20Q8aznU4OAMIIHcTCCBVmgAwIB
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
# Y1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAtcwggJAAgEBMIIBAKGB2KSB1TCB
# 0jELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMk
# TWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjpEMDgyLTRCRkQtRUVCQTElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUAdqNHe113gCJ87aZI
# Ga5QBUqIwvKggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAN
# BgkqhkiG9w0BAQUFAAIFAOgN6McwIhgPMjAyMzA1MTYxOTM0MzFaGA8yMDIzMDUx
# NzE5MzQzMVowdzA9BgorBgEEAYRZCgQBMS8wLTAKAgUA6A3oxwIBADAKAgEAAgIT
# cwIB/zAHAgEAAgISQzAKAgUA6A86RwIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgor
# BgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUA
# A4GBABpV/Oua5tp9JExDUvWCdj4MRVcvSVhphdIxBO6nXb2KzAg/K1ktz2g5jte0
# 4dPEgqKKZijtnQQlg5nLHCZ/2ncRYL5nkxka8MSh98npu1zrAucW6G5Na8C/xgKb
# dg/oNmeIsMGwrC7O2cmOvNg5i6IriY/GaEuQoZDBrjNQNyxBMYIEDTCCBAkCAQEw
# gZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UE
# AxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAG6Hz8Z98F1vXwA
# AQAAAbowDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0B
# CRABBDAvBgkqhkiG9w0BCQQxIgQgDTSYuDgkif0H9CXutYVcRCsNsTdPflqcFwkw
# c/cVPs4wgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCApVb08M25w+tYGWsml
# Gtp1gy1nPcqWfqgMF3nlWYVzBTCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwAhMzAAABuh8/GffBdb18AAEAAAG6MCIEIHOb+CqbMzr3kh0TofVi
# Q+zDzCY44Knn/um+TSNllA4sMA0GCSqGSIb3DQEBCwUABIICAC3Qz6fiVPVm3YAC
# Od5hZgSTUItnKzJPcDJ7ZzwM6Nq/jflhuAIJFIaHITrRSmVCPZ5+pLqG5ybUS2ZL
# LBtygSg6WQxhRianpTHS/7K3aYKqfbzAwzOecl9dkwwX4vOTStAeGm6M4BuZGp7w
# IIFQaRi5cD1fQcxr2VkdOoLwBaD8NEJZ0FXCfV5T1esOQM1wDOwJZQhrlV91Agcc
# YxQT/kVbW0DCBUQh6w9LD7Dk7XHNI1qadDiMRtGCq8wOkDh6x6KKKBos31A/74KG
# 4dQ5uMmsEb1fdb1pzADokZDEBXDVKcS8DOFY7zOPzDH6VbTNGkF8LFbSqu/zfef9
# cBE8iA48/FtnEcxff+pmFZktv86ZCH6JzVxmRWhgogNPj+7eHhBYMTHbO3FICSYp
# GlYCv7ZksytGhpJhuEtv4hatqp1drL3QZc6i/EIuF14N7ghlrgV45vCwrehCrioV
# qgg/yH60eo5x8nqcrBk/9cEajItVRK0ZGLxIZM67taqoI3LHvKur3KzwjHSIs0fY
# 6pvJ8wi4dWQdKJwOFUycbzNAnxysuTYBpDvdsgUAyl4WvxJ7yh+9Nkw2KEbNUFzV
# qczF3QKhF0P07tARdPopYT0DE2sDKTz5eb7+ekx5DuZTvJUbqp0Khf4AzSdnzek0
# 4n/hJ9Y8Ay57nvS7or6hEd4RDwMf
# SIG # End signature block
