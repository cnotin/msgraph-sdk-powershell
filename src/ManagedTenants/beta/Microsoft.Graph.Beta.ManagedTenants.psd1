#
# Module manifest for module 'Microsoft.Graph.Beta.ManagedTenants'
#
# Generated by: Microsoft Corporation
#
# Generated on: 12/5/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Beta.ManagedTenants.psm1'

# Version number of this module.
ModuleVersion = '2.11.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'e5ddb308-d7d6-4bb1-82ed-cc467c794955'

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
RequiredAssemblies = './bin/Microsoft.Graph.Beta.ManagedTenants.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Beta.ManagedTenants.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-MgBetaTenantRelationshipManagedTenant', 
               'Get-MgBetaTenantRelationshipManagedTenantAggregatedPolicyCompliance', 
               'Get-MgBetaTenantRelationshipManagedTenantAggregatedPolicyComplianceCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAlert', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertApiNotification', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertApiNotificationCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertEmailNotification', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertEmailNotificationCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertLog', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertLogAlert', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertLogCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertRule', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertRuleAlert', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertRuleAlertCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertRuleCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertRuleDefinition', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertRuleDefinitionAlertRule', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertRuleDefinitionAlertRuleCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAlertRuleDefinitionCount', 
               'Get-MgBetaTenantRelationshipManagedTenantApiNotification', 
               'Get-MgBetaTenantRelationshipManagedTenantApiNotificationAlert', 
               'Get-MgBetaTenantRelationshipManagedTenantApiNotificationCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAppPerformance', 
               'Get-MgBetaTenantRelationshipManagedTenantAppPerformanceCount', 
               'Get-MgBetaTenantRelationshipManagedTenantAuditEvent', 
               'Get-MgBetaTenantRelationshipManagedTenantAuditEventCount', 
               'Get-MgBetaTenantRelationshipManagedTenantCloudPcConnection', 
               'Get-MgBetaTenantRelationshipManagedTenantCloudPcConnectionCount', 
               'Get-MgBetaTenantRelationshipManagedTenantCloudPcDevice', 
               'Get-MgBetaTenantRelationshipManagedTenantCloudPcDeviceCount', 
               'Get-MgBetaTenantRelationshipManagedTenantCloudPcOverview', 
               'Get-MgBetaTenantRelationshipManagedTenantCloudPcOverviewCount', 
               'Get-MgBetaTenantRelationshipManagedTenantConditionalAccessPolicyCoverage', 
               'Get-MgBetaTenantRelationshipManagedTenantConditionalAccessPolicyCoverageCount', 
               'Get-MgBetaTenantRelationshipManagedTenantCount', 
               'Get-MgBetaTenantRelationshipManagedTenantCredentialUserRegistrationSummary', 
               'Get-MgBetaTenantRelationshipManagedTenantCredentialUserRegistrationSummaryCount', 
               'Get-MgBetaTenantRelationshipManagedTenantCustomizedInformation', 
               'Get-MgBetaTenantRelationshipManagedTenantCustomizedInformationCount', 
               'Get-MgBetaTenantRelationshipManagedTenantDetailedInformation', 
               'Get-MgBetaTenantRelationshipManagedTenantDetailedInformationCount', 
               'Get-MgBetaTenantRelationshipManagedTenantDeviceAppPerformance', 
               'Get-MgBetaTenantRelationshipManagedTenantDeviceAppPerformanceCount', 
               'Get-MgBetaTenantRelationshipManagedTenantDeviceCompliancePolicySettingStateSummary', 
               'Get-MgBetaTenantRelationshipManagedTenantDeviceCompliancePolicySettingStateSummaryCount', 
               'Get-MgBetaTenantRelationshipManagedTenantDeviceHealthStatus', 
               'Get-MgBetaTenantRelationshipManagedTenantDeviceHealthStatusCount', 
               'Get-MgBetaTenantRelationshipManagedTenantEmailNotification', 
               'Get-MgBetaTenantRelationshipManagedTenantEmailNotificationAlert', 
               'Get-MgBetaTenantRelationshipManagedTenantEmailNotificationCount', 
               'Get-MgBetaTenantRelationshipManagedTenantGroup', 
               'Get-MgBetaTenantRelationshipManagedTenantGroupCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagedDeviceCompliance', 
               'Get-MgBetaTenantRelationshipManagedTenantManagedDeviceComplianceCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagedDeviceComplianceTrend', 
               'Get-MgBetaTenantRelationshipManagedTenantManagedDeviceComplianceTrendCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementAction', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementActionCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementActionTenantDeploymentStatus', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementActionTenantDeploymentStatusCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementIntent', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementIntentCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplate', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateCollection', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateCollectionCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateCollectionManagementTemplate', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateCollectionManagementTemplateCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateCollectionTenantSummary', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateCollectionTenantSummaryCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStep', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepAcceptedVersion', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepManagementTemplate', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepTenantSummary', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepTenantSummaryCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersion', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionAcceptedFor', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionDeployment', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionDeploymentCount', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionDeploymentTemplateStepVersion', 
               'Get-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionTemplateStep', 
               'Get-MgBetaTenantRelationshipManagedTenantMyRole', 
               'Get-MgBetaTenantRelationshipManagedTenantMyRoleCount', 
               'Get-MgBetaTenantRelationshipManagedTenantTag', 
               'Get-MgBetaTenantRelationshipManagedTenantTagCount', 
               'Get-MgBetaTenantRelationshipManagedTenantTicketingEndpoint', 
               'Get-MgBetaTenantRelationshipManagedTenantTicketingEndpointCount', 
               'Get-MgBetaTenantRelationshipManagedTenantWindowsDeviceMalwareState', 
               'Get-MgBetaTenantRelationshipManagedTenantWindowsDeviceMalwareStateCount', 
               'Get-MgBetaTenantRelationshipManagedTenantWindowsProtectionState', 
               'Get-MgBetaTenantRelationshipManagedTenantWindowsProtectionStateCount', 
               'New-MgBetaTenantRelationshipManagedTenant', 
               'New-MgBetaTenantRelationshipManagedTenantAggregatedPolicyCompliance', 
               'New-MgBetaTenantRelationshipManagedTenantAlert', 
               'New-MgBetaTenantRelationshipManagedTenantAlertLog', 
               'New-MgBetaTenantRelationshipManagedTenantAlertRule', 
               'New-MgBetaTenantRelationshipManagedTenantAlertRuleDefinition', 
               'New-MgBetaTenantRelationshipManagedTenantApiNotification', 
               'New-MgBetaTenantRelationshipManagedTenantAppPerformance', 
               'New-MgBetaTenantRelationshipManagedTenantAuditEvent', 
               'New-MgBetaTenantRelationshipManagedTenantCloudPcConnection', 
               'New-MgBetaTenantRelationshipManagedTenantCloudPcDevice', 
               'New-MgBetaTenantRelationshipManagedTenantCloudPcOverview', 
               'New-MgBetaTenantRelationshipManagedTenantConditionalAccessPolicyCoverage', 
               'New-MgBetaTenantRelationshipManagedTenantCredentialUserRegistrationSummary', 
               'New-MgBetaTenantRelationshipManagedTenantCustomizedInformation', 
               'New-MgBetaTenantRelationshipManagedTenantDetailedInformation', 
               'New-MgBetaTenantRelationshipManagedTenantDeviceAppPerformance', 
               'New-MgBetaTenantRelationshipManagedTenantDeviceCompliancePolicySettingStateSummary', 
               'New-MgBetaTenantRelationshipManagedTenantDeviceHealthStatus', 
               'New-MgBetaTenantRelationshipManagedTenantEmailNotification', 
               'New-MgBetaTenantRelationshipManagedTenantGroup', 
               'New-MgBetaTenantRelationshipManagedTenantManagedDeviceCompliance', 
               'New-MgBetaTenantRelationshipManagedTenantManagedDeviceComplianceTrend', 
               'New-MgBetaTenantRelationshipManagedTenantManagementAction', 
               'New-MgBetaTenantRelationshipManagedTenantManagementActionTenantDeploymentStatus', 
               'New-MgBetaTenantRelationshipManagedTenantManagementIntent', 
               'New-MgBetaTenantRelationshipManagedTenantManagementTemplate', 
               'New-MgBetaTenantRelationshipManagedTenantManagementTemplateCollection', 
               'New-MgBetaTenantRelationshipManagedTenantManagementTemplateCollectionTenantSummary', 
               'New-MgBetaTenantRelationshipManagedTenantManagementTemplateStep', 
               'New-MgBetaTenantRelationshipManagedTenantManagementTemplateStepTenantSummary', 
               'New-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersion', 
               'New-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionDeployment', 
               'New-MgBetaTenantRelationshipManagedTenantMyRole', 
               'New-MgBetaTenantRelationshipManagedTenantTag', 
               'New-MgBetaTenantRelationshipManagedTenantTicketingEndpoint', 
               'New-MgBetaTenantRelationshipManagedTenantWindowsDeviceMalwareState', 
               'New-MgBetaTenantRelationshipManagedTenantWindowsProtectionState', 
               'Remove-MgBetaTenantRelationshipManagedTenant', 
               'Remove-MgBetaTenantRelationshipManagedTenantAggregatedPolicyCompliance', 
               'Remove-MgBetaTenantRelationshipManagedTenantAlert', 
               'Remove-MgBetaTenantRelationshipManagedTenantAlertLog', 
               'Remove-MgBetaTenantRelationshipManagedTenantAlertRule', 
               'Remove-MgBetaTenantRelationshipManagedTenantAlertRuleDefinition', 
               'Remove-MgBetaTenantRelationshipManagedTenantApiNotification', 
               'Remove-MgBetaTenantRelationshipManagedTenantAppPerformance', 
               'Remove-MgBetaTenantRelationshipManagedTenantAuditEvent', 
               'Remove-MgBetaTenantRelationshipManagedTenantCloudPcConnection', 
               'Remove-MgBetaTenantRelationshipManagedTenantCloudPcDevice', 
               'Remove-MgBetaTenantRelationshipManagedTenantCloudPcOverview', 
               'Remove-MgBetaTenantRelationshipManagedTenantConditionalAccessPolicyCoverage', 
               'Remove-MgBetaTenantRelationshipManagedTenantCredentialUserRegistrationSummary', 
               'Remove-MgBetaTenantRelationshipManagedTenantCustomizedInformation', 
               'Remove-MgBetaTenantRelationshipManagedTenantDetailedInformation', 
               'Remove-MgBetaTenantRelationshipManagedTenantDeviceAppPerformance', 
               'Remove-MgBetaTenantRelationshipManagedTenantDeviceCompliancePolicySettingStateSummary', 
               'Remove-MgBetaTenantRelationshipManagedTenantDeviceHealthStatus', 
               'Remove-MgBetaTenantRelationshipManagedTenantEmailNotification', 
               'Remove-MgBetaTenantRelationshipManagedTenantGroup', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagedDeviceCompliance', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagedDeviceComplianceTrend', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementAction', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementActionTenantDeploymentStatus', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementIntent', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementTemplate', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementTemplateCollection', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementTemplateCollectionTenantSummary', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementTemplateStep', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementTemplateStepTenantSummary', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersion', 
               'Remove-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionDeployment', 
               'Remove-MgBetaTenantRelationshipManagedTenantMyRole', 
               'Remove-MgBetaTenantRelationshipManagedTenantTag', 
               'Remove-MgBetaTenantRelationshipManagedTenantTicketingEndpoint', 
               'Remove-MgBetaTenantRelationshipManagedTenantWindowsDeviceMalwareState', 
               'Remove-MgBetaTenantRelationshipManagedTenantWindowsProtectionState', 
               'Update-MgBetaTenantRelationshipManagedTenant', 
               'Update-MgBetaTenantRelationshipManagedTenantAggregatedPolicyCompliance', 
               'Update-MgBetaTenantRelationshipManagedTenantAlert', 
               'Update-MgBetaTenantRelationshipManagedTenantAlertLog', 
               'Update-MgBetaTenantRelationshipManagedTenantAlertRule', 
               'Update-MgBetaTenantRelationshipManagedTenantAlertRuleDefinition', 
               'Update-MgBetaTenantRelationshipManagedTenantApiNotification', 
               'Update-MgBetaTenantRelationshipManagedTenantAppPerformance', 
               'Update-MgBetaTenantRelationshipManagedTenantAuditEvent', 
               'Update-MgBetaTenantRelationshipManagedTenantCloudPcConnection', 
               'Update-MgBetaTenantRelationshipManagedTenantCloudPcDevice', 
               'Update-MgBetaTenantRelationshipManagedTenantCloudPcOverview', 
               'Update-MgBetaTenantRelationshipManagedTenantConditionalAccessPolicyCoverage', 
               'Update-MgBetaTenantRelationshipManagedTenantCredentialUserRegistrationSummary', 
               'Update-MgBetaTenantRelationshipManagedTenantCustomizedInformation', 
               'Update-MgBetaTenantRelationshipManagedTenantDetailedInformation', 
               'Update-MgBetaTenantRelationshipManagedTenantDeviceAppPerformance', 
               'Update-MgBetaTenantRelationshipManagedTenantDeviceCompliancePolicySettingStateSummary', 
               'Update-MgBetaTenantRelationshipManagedTenantDeviceHealthStatus', 
               'Update-MgBetaTenantRelationshipManagedTenantEmailNotification', 
               'Update-MgBetaTenantRelationshipManagedTenantGroup', 
               'Update-MgBetaTenantRelationshipManagedTenantManagedDeviceCompliance', 
               'Update-MgBetaTenantRelationshipManagedTenantManagedDeviceComplianceTrend', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementAction', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementActionTenantDeploymentStatus', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementIntent', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementTemplate', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementTemplateCollection', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementTemplateCollectionTenantSummary', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementTemplateStep', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementTemplateStepTenantSummary', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersion', 
               'Update-MgBetaTenantRelationshipManagedTenantManagementTemplateStepVersionDeployment', 
               'Update-MgBetaTenantRelationshipManagedTenantMyRole', 
               'Update-MgBetaTenantRelationshipManagedTenantTag', 
               'Update-MgBetaTenantRelationshipManagedTenantTicketingEndpoint', 
               'Update-MgBetaTenantRelationshipManagedTenantWindowsDeviceMalwareState', 
               'Update-MgBetaTenantRelationshipManagedTenantWindowsProtectionState'

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
# MIInvwYJKoZIhvcNAQcCoIInsDCCJ6wCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDnlbl0BfZuGx8M
# DuN2LVvevGKkP9VQtzkb0smaoug0JKCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# /Xmfwb1tbWrJUnMTDXpQzTGCGZ8wghmbAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAANOtTx6wYRv6ysAAAAAA04wDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIA8+HnJKE7TQu6UqXqSZFrIM
# oUmm09A6JL1U0kz0mDLfMEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEApEbajfpp1kWszzu7sGmTfKgt6rgKFip0oOdPlNKtdnTl5E04pYAm1HjG
# mhltX9zEtYARoQhLaRooITHJJXKDNSuSFWK+Z8fDcfa0EI8BEailoaRdlWMaawyt
# KMp+iQw2a8rXJqbetUjjYZA5KBxKQfLo3Sv/DYIFwj8davGLUCT21Pp67etB3NNv
# OSdPM0kGjUPS7Nnk0R1t6DR+Z6z6F4yoO0gUFk8OOtjMNQjCxV+jeM3cm4RzdBIs
# XpNAKN+ZxHCU/+3dIowXRGf0iOrBdM3iYUzcLOlbrk4XH0WwUJiwCcwqGnfztG3D
# Ep6HgfWMGQBcH+lHd7xCTaST7bDfXKGCFykwghclBgorBgEEAYI3AwMBMYIXFTCC
# FxEGCSqGSIb3DQEHAqCCFwIwghb+AgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFZBgsq
# hkiG9w0BCRABBKCCAUgEggFEMIIBQAIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCCSiUTm/efl57V1Dz/gPo3qBdJMTYaXViNC+lgA5kTpIAIGZV34QS78
# GBMyMDIzMTIwNTIwMzgxNS41ODFaMASAAgH0oIHYpIHVMIHSMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJl
# bGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNO
# OjA4NDItNEJFNi1DMjlBMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBT
# ZXJ2aWNloIIReDCCBycwggUPoAMCAQICEzMAAAHajtXJWgDREbEAAQAAAdowDQYJ
# KoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcNMjMx
# MDEyMTkwNjU5WhcNMjUwMTEwMTkwNjU5WjCB0jELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3Bl
# cmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjowODQyLTRC
# RTYtQzI5QTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCC
# AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAJOQBgh2tVFR1j8jQA4NDf8b
# cVrXSN080CNKPSQo7S57sCnPU0FKF47w2L6qHtwm4EnClF2cruXFp/l7PpMQg25E
# 7X8xDmvxr8BBE6iASAPCfrTebuvAsZWcJYhy7prgCuBf7OidXpgsW1y8p6Vs7sD2
# aup/0uveYxeXlKtsPjMCplHkk0ba+HgLho0J68Kdji3DM2K59wHy9xrtsYK+X9er
# bDGZ2mmX3765aS5Q7/ugDxMVgzyj80yJn6ULnknD9i4kUQxVhqV1dc/DF6UBeuzf
# ukkMed7trzUEZMRyla7qhvwUeQlgzCQhpZjz+zsQgpXlPczvGd0iqr7lACwfVGog
# 5plIzdExvt1TA8Jmef819aTKwH1IVEIwYLA6uvS8kRdA6RxvMcb//ulNjIuGceyy
# kMAXEynVrLG9VvK4rfrCsGL3j30Lmidug+owrcCjQagYmrGk1hBykXilo9YB8Qyy
# 5Q1KhGuH65V3zFy8a0kwbKBRs8VR4HtoPYw9z1DdcJfZBO2dhzX3yAMipCGm6Smv
# mvavRsXhy805jiApDyN+s0/b7os2z8iRWGJk6M9uuT2493gFV/9JLGg5YJJCJXI+
# yxkO/OXnZJsuGt0+zWLdHS4XIXBG17oPu5KsFfRTHREloR2dI6GwaaxIyDySHYOt
# vIydla7u4lfnfCjY/qKTAgMBAAGjggFJMIIBRTAdBgNVHQ4EFgQUoXyNyVE9ZhOV
# izEUVwhNgL8PX0UwHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXwYD
# VR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9j
# cmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3JsMGwG
# CCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3NvZnQu
# Y29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIw
# MjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcD
# CDAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQELBQADggIBALmDVdTtuI0jAEt4
# 1O2OM8CU237TGMyhrGr7FzKCEFaXxtoqk/IObQriq1caHVh2vyuQ24nz3TdOBv7r
# cs/qnPjOxnXFLyZPeaWLsNuARVmUViyVYXjXYB5DwzaWZgScY8GKL7yGjyWrh78W
# JUgh7rE1+5VD5h0/6rs9dBRqAzI9fhZz7spsjt8vnx50WExbBSSH7rfabHendpeq
# bTmW/RfcaT+GFIsT+g2ej7wRKIq/QhnsoF8mpFNPHV1q/WK/rF/ChovkhJMDvlqt
# ETWi97GolOSKamZC9bYgcPKfz28ed25WJy10VtQ9P5+C/2dOfDaz1RmeOb27Kbeg
# ha0SfPcriTfORVvqPDSa3n9N7dhTY7+49I8evoad9hdZ8CfIOPftwt3xTX2RhMZJ
# CVoFlabHcvfb84raFM6cz5EYk+x1aVEiXtgK6R0xn1wjMXHf0AWlSjqRkzvSnRKz
# FsZwEl74VahlKVhI+Ci9RT9+6Gc0xWzJ7zQIUFE3Jiix5+7KL8ArHfBY9UFLz4sn
# boJ7Qip3IADbkU4ZL0iQ8j8Ixra7aSYfToUefmct3dM69ff4Eeh2Kh9NsKiiph58
# 9Ap/xS1jESlrfjL/g/ZboaS5d9a2fA598mubDvLD5x5PP37700vm/Y+PIhmp2fTv
# uS2sndeZBmyTqcUNHRNmCk+njV3nMIIHcTCCBVmgAwIBAgITMwAAABXF52ueAptJ
# mQAAAAAAFTANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNh
# dGUgQXV0aG9yaXR5IDIwMTAwHhcNMjEwOTMwMTgyMjI1WhcNMzAwOTMwMTgzMjI1
# WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCAiIwDQYJKoZIhvcNAQEB
# BQADggIPADCCAgoCggIBAOThpkzntHIhC3miy9ckeb0O1YLT/e6cBwfSqWxOdcjK
# NVf2AX9sSuDivbk+F2Az/1xPx2b3lVNxWuJ+Slr+uDZnhUYjDLWNE893MsAQGOhg
# fWpSg0S3po5GawcU88V29YZQ3MFEyHFcUTE3oAo4bo3t1w/YJlN8OWECesSq/XJp
# rx2rrPY2vjUmZNqYO7oaezOtgFt+jBAcnVL+tuhiJdxqD89d9P6OU8/W7IVWTe/d
# vI2k45GPsjksUZzpcGkNyjYtcI4xyDUoveO0hyTD4MmPfrVUj9z6BVWYbWg7mka9
# 7aSueik3rMvrg0XnRm7KMtXAhjBcTyziYrLNueKNiOSWrAFKu75xqRdbZ2De+JKR
# Hh09/SDPc31BmkZ1zcRfNN0Sidb9pSB9fvzZnkXftnIv231fgLrbqn427DZM9itu
# qBJR6L8FA6PRc6ZNN3SUHDSCD/AQ8rdHGO2n6Jl8P0zbr17C89XYcz1DTsEzOUyO
# ArxCaC4Q6oRRRuLRvWoYWmEBc8pnol7XKHYC4jMYctenIPDC+hIK12NvDMk2ZItb
# oKaDIV1fMHSRlJTYuVD5C4lh8zYGNRiER9vcG9H9stQcxWv2XFJRXRLbJbqvUAV6
# bMURHXLvjflSxIUXk8A8FdsaN8cIFRg/eKtFtvUeh17aj54WcmnGrnu3tz5q4i6t
# AgMBAAGjggHdMIIB2TASBgkrBgEEAYI3FQEEBQIDAQABMCMGCSsGAQQBgjcVAgQW
# BBQqp1L+ZMSavoKRPEY1Kc8Q/y8E7jAdBgNVHQ4EFgQUn6cVXQBeYl2D9OXSZacb
# UzUZ6XIwXAYDVR0gBFUwUzBRBgwrBgEEAYI3TIN9AQEwQTA/BggrBgEFBQcCARYz
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9Eb2NzL1JlcG9zaXRvcnku
# aHRtMBMGA1UdJQQMMAoGCCsGAQUFBwMIMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIA
# QwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2
# VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwu
# bWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEw
# LTA2LTIzLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93
# d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYt
# MjMuY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQCdVX38Kq3hLB9nATEkW+Geckv8qW/q
# XBS2Pk5HZHixBpOXPTEztTnXwnE2P9pkbHzQdTltuw8x5MKP+2zRoZQYIu7pZmc6
# U03dmLq2HnjYNi6cqYJWAAOwBb6J6Gngugnue99qb74py27YP0h1AdkY3m2CDPVt
# I1TkeFN1JFe53Z/zjj3G82jfZfakVqr3lbYoVSfQJL1AoL8ZthISEV09J+BAljis
# 9/kpicO8F7BUhUKz/AyeixmJ5/ALaoHCgRlCGVJ1ijbCHcNhcy4sa3tuPywJeBTp
# kbKpW99Jo3QMvOyRgNI95ko+ZjtPu4b6MhrZlvSP9pEB9s7GdP32THJvEKt1MMU0
# sHrYUP4KWN1APMdUbZ1jdEgssU5HLcEUBHG/ZPkkvnNtyo4JvbMBV0lUZNlz138e
# W0QBjloZkWsNn6Qo3GcZKCS6OEuabvshVGtqRRFHqfG3rsjoiV5PndLQTHa1V1QJ
# sWkBRH58oWFsc/4Ku+xBZj1p/cvBQUl+fpO+y/g75LcVv7TOPqUxUYS8vwLBgqJ7
# Fx0ViY1w/ue10CgaiQuPNtq6TPmb/wrpNPgkNWcr4A245oyZ1uEi6vAnQj0llOZ0
# dFtq0Z4+7X6gMTN9vMvpe784cETRkPHIqzqKOghif9lwY1NNje6CbaUFEMFxBmoQ
# tB1VM1izoXBm8qGCAtQwggI9AgEBMIIBAKGB2KSB1TCB0jELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxh
# bmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjow
# ODQyLTRCRTYtQzI5QTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUAQqIfIYljHUbNoY0/wjhXRn/sSA2ggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOkZmVEwIhgPMjAyMzEyMDUyMDQyNTdaGA8yMDIzMTIwNjIwNDI1N1owdDA6Bgor
# BgEEAYRZCgQBMSwwKjAKAgUA6RmZUQIBADAHAgEAAgIS6DAHAgEAAgIQczAKAgUA
# 6Rrq0QIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAID
# B6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAIYZ5s5hgCkJmzw2sqRG
# ojrGhZayzDWHeDTXN9L/AP8R3it9QIBM4jXBfgI8JoOh6tcMg2Egm0OhrX+lRXIt
# 21UO0NIjxdNcZisOGAWk9wW88YVlPTBfCiw8872tOpI+wNx/ZjPGoo44ZXoX02V9
# hnu2uClsnMKS8bJ8G8evai3JMYIEDTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgUENBIDIwMTACEzMAAAHajtXJWgDREbEAAQAAAdowDQYJYIZIAWUDBAIB
# BQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQx
# IgQgUBj1b1DbAP+dszv/anKJZF8Wj/v+M0kcNzpFtD9tY5wwgfoGCyqGSIb3DQEJ
# EAIvMYHqMIHnMIHkMIG9BCAipaNpYsDvnqTe95Dj1C09020I5ljibrW/ndICOxg9
# xjCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# JjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAB2o7V
# yVoA0RGxAAEAAAHaMCIEIEFQOoV+sfDZkScboU2F5FM3e+u26chnNrdJTNLVfIXt
# MA0GCSqGSIb3DQEBCwUABIICABRHiQfddra5eTsyZheDB0qQHSzcsj7xUwyjycJp
# SiME2KvH/E48C++CFnGk/uiXDbRL46bPHz/d1x7yIxtQHZEwgE9lHre6uxNTLGUJ
# a93PGxyH5i7RImA9dQUQ9rwgdPEj9xV/2AwtPiJSINcGNFC/jneXnMOSYqQ52GCm
# cdhb9c5xSkPeuIdgX/XORdklfLza7ZzWxaSyI37g0wiBbVGva6wmhhp0bqdgWIVJ
# VIzLoY+I3Mabod0Z0iDNPTACgmLDXrqmX8OUG6UflsjjQwLamHsYXXE1PhR69KLw
# 3iAjm2jClY/SpS9zN3kynG9Y2X0N0rfTWusd7OXXFJyEHq321WD9i2c5xHskOtp1
# OZZ8fa1AdLgX1tM0M4EaKMXCnL1sZgAVHfyy4Y2nKoUtpHJXBljKxJ6HqrJTisMs
# /0dBg/UAN4uMwlzeTxFvd7xI3tTrt8NX6HEtXJyQqNLA4UMpjba5pxu5QUZkadC9
# qm1k/P2vSpAQ9d8KFJQtSzS6aH1OdHm25Azj9dMekjsYB6BWPN/ULoi3PlX6+A27
# 2CoC6EPhweqpYW4yNAawyH0TgLmev+9NqM6GIbUm2eVUNFfRTrelyAvU6CSGpBau
# eVzRImSj1rJEKDvfcxe6cy9uSUtgLTK2J1BYe/2rPrQzplMNlbtNzB2/v6hc4fLv
# IVCR
# SIG # End signature block
