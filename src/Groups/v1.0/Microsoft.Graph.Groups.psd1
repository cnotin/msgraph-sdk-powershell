#
# Module manifest for module 'Microsoft.Graph.Groups'
#
# Generated by: Microsoft Corporation
#
# Generated on: 5/16/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Groups.psm1'

# Version number of this module.
ModuleVersion = '2.0.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '50bc9e18-e281-4208-8913-c9e1bef6083d'

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
RequiredAssemblies = './bin/Microsoft.Graph.Groups.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Groups.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-MgGroupDriveListContentTypeCopy', 
               'Add-MgGroupDriveListContentTypeCopyFromContentTypeHub', 
               'Add-MgGroupFavorite', 'Add-MgGroupSite', 
               'Add-MgGroupSiteContentTypeCopy', 
               'Add-MgGroupSiteContentTypeCopyFromContentTypeHub', 
               'Add-MgGroupSiteListContentTypeCopy', 
               'Add-MgGroupSiteListContentTypeCopyFromContentTypeHub', 
               'Add-MgGroupToLifecyclePolicy', 
               'Confirm-MgGroupGrantedPermissionForApp', 
               'Confirm-MgGroupMemberGroup', 'Confirm-MgGroupMemberObject', 
               'Confirm-MgGroupPermissionGrantMemberGroup', 
               'Confirm-MgGroupPermissionGrantMemberObject', 
               'Confirm-MgGroupSettingTemplateMemberGroup', 
               'Confirm-MgGroupSettingTemplateMemberObject', 
               'Copy-MgGroupDriveItem', 
               'Copy-MgGroupDriveListContentTypeToDefaultContentLocation', 
               'Copy-MgGroupDriveRoot', 'Copy-MgGroupOnenoteNotebook', 
               'Copy-MgGroupOnenotePageToSection', 
               'Copy-MgGroupOnenoteSectionToNotebook', 
               'Copy-MgGroupOnenoteSectionToSectionGroup', 
               'Copy-MgGroupSiteContentTypeToDefaultContentLocation', 
               'Copy-MgGroupSiteListContentTypeToDefaultContentLocation', 
               'Get-MgGroup', 'Get-MgGroupAcceptedSender', 
               'Get-MgGroupAcceptedSenderByRef', 'Get-MgGroupAcceptedSenderCount', 
               'Get-MgGroupById', 'Get-MgGroupCalendarEventDelta', 
               'Get-MgGroupCalendarSchedule', 'Get-MgGroupConversation', 
               'Get-MgGroupConversationCount', 'Get-MgGroupConversationThread', 
               'Get-MgGroupConversationThreadCount', 
               'Get-MgGroupConversationThreadPost', 
               'Get-MgGroupConversationThreadPostAttachment', 
               'Get-MgGroupConversationThreadPostAttachmentCount', 
               'Get-MgGroupConversationThreadPostCount', 
               'Get-MgGroupConversationThreadPostExtension', 
               'Get-MgGroupConversationThreadPostExtensionCount', 
               'Get-MgGroupConversationThreadPostInReplyToAttachment', 
               'Get-MgGroupConversationThreadPostInReplyToAttachmentCount', 
               'Get-MgGroupConversationThreadPostInReplyToExtension', 
               'Get-MgGroupConversationThreadPostInReplyToExtensionCount', 
               'Get-MgGroupCount', 'Get-MgGroupCreatedOnBehalfOf', 
               'Get-MgGroupDelta', 'Get-MgGroupDriveItemActivityByInterval', 
               'Get-MgGroupDriveItemDelta', 
               'Get-MgGroupDriveItemListItemActivityByInterval', 
               'Get-MgGroupDriveListContentTypeCompatibleHubContentType', 
               'Get-MgGroupDriveListItemActivityByInterval', 
               'Get-MgGroupDriveRootActivityByInterval', 
               'Get-MgGroupDriveRootDelta', 
               'Get-MgGroupDriveRootListItemActivityByInterval', 
               'Get-MgGroupEventDelta', 'Get-MgGroupExtension', 
               'Get-MgGroupExtensionCount', 'Get-MgGroupLifecyclePolicy', 
               'Get-MgGroupLifecyclePolicyByGroup', 
               'Get-MgGroupLifecyclePolicyCount', 
               'Get-MgGroupListMemberCountAsApplication', 
               'Get-MgGroupListMemberCountAsDevice', 
               'Get-MgGroupListMemberCountAsGroup', 
               'Get-MgGroupListMemberCountAsOrgContact', 
               'Get-MgGroupListMemberCountAsServicePrincipal', 
               'Get-MgGroupListMemberCountAsUser', 
               'Get-MgGroupListMemberOfCountAsAdministrativeUnit', 
               'Get-MgGroupListMemberOfCountAsGroup', 
               'Get-MgGroupListMemberWithLicenseErrorCountAsApplication', 
               'Get-MgGroupListMemberWithLicenseErrorCountAsDevice', 
               'Get-MgGroupListMemberWithLicenseErrorCountAsGroup', 
               'Get-MgGroupListMemberWithLicenseErrorCountAsOrgContact', 
               'Get-MgGroupListMemberWithLicenseErrorCountAsServicePrincipal', 
               'Get-MgGroupListMemberWithLicenseErrorCountAsUser', 
               'Get-MgGroupListOwnerCountAsApplication', 
               'Get-MgGroupListOwnerCountAsDevice', 
               'Get-MgGroupListOwnerCountAsGroup', 
               'Get-MgGroupListOwnerCountAsOrgContact', 
               'Get-MgGroupListOwnerCountAsServicePrincipal', 
               'Get-MgGroupListOwnerCountAsUser', 
               'Get-MgGroupListTransitiveMemberCountAsApplication', 
               'Get-MgGroupListTransitiveMemberCountAsDevice', 
               'Get-MgGroupListTransitiveMemberCountAsGroup', 
               'Get-MgGroupListTransitiveMemberCountAsOrgContact', 
               'Get-MgGroupListTransitiveMemberCountAsServicePrincipal', 
               'Get-MgGroupListTransitiveMemberCountAsUser', 
               'Get-MgGroupListTransitiveMemberOfCountAsAdministrativeUnit', 
               'Get-MgGroupListTransitiveMemberOfCountAsGroup', 
               'Get-MgGroupMember', 'Get-MgGroupMemberAsApplication', 
               'Get-MgGroupMemberAsDevice', 'Get-MgGroupMemberAsGroup', 
               'Get-MgGroupMemberAsOrgContact', 
               'Get-MgGroupMemberAsServicePrincipal', 'Get-MgGroupMemberAsUser', 
               'Get-MgGroupMemberByRef', 'Get-MgGroupMemberCount', 
               'Get-MgGroupMemberGroup', 'Get-MgGroupMemberObject', 
               'Get-MgGroupMemberOf', 'Get-MgGroupMemberOfAsAdministrativeUnit', 
               'Get-MgGroupMemberOfAsGroup', 'Get-MgGroupMemberOfCount', 
               'Get-MgGroupMemberWithLicenseError', 
               'Get-MgGroupMemberWithLicenseErrorAsApplication', 
               'Get-MgGroupMemberWithLicenseErrorAsDevice', 
               'Get-MgGroupMemberWithLicenseErrorAsGroup', 
               'Get-MgGroupMemberWithLicenseErrorAsOrgContact', 
               'Get-MgGroupMemberWithLicenseErrorAsServicePrincipal', 
               'Get-MgGroupMemberWithLicenseErrorAsUser', 
               'Get-MgGroupMemberWithLicenseErrorCount', 
               'Get-MgGroupOnenoteNotebookFromWebUrl', 
               'Get-MgGroupOnenoteRecentNotebook', 'Get-MgGroupOwner', 
               'Get-MgGroupOwnerAsApplication', 'Get-MgGroupOwnerAsDevice', 
               'Get-MgGroupOwnerAsGroup', 'Get-MgGroupOwnerAsOrgContact', 
               'Get-MgGroupOwnerAsServicePrincipal', 'Get-MgGroupOwnerAsUser', 
               'Get-MgGroupOwnerByRef', 'Get-MgGroupOwnerCount', 
               'Get-MgGroupPermissionGrant', 'Get-MgGroupPermissionGrantById', 
               'Get-MgGroupPermissionGrantCount', 
               'Get-MgGroupPermissionGrantDelta', 
               'Get-MgGroupPermissionGrantMemberGroup', 
               'Get-MgGroupPermissionGrantMemberObject', 'Get-MgGroupPhoto', 
               'Get-MgGroupPhotoContent', 'Get-MgGroupPhotoCount', 
               'Get-MgGroupRejectedSender', 'Get-MgGroupRejectedSenderByRef', 
               'Get-MgGroupRejectedSenderCount', 'Get-MgGroupSetting', 
               'Get-MgGroupSettingCount', 'Get-MgGroupSettingTemplateById', 
               'Get-MgGroupSettingTemplateCount', 
               'Get-MgGroupSettingTemplateDelta', 
               'Get-MgGroupSettingTemplateGroupSettingTemplate', 
               'Get-MgGroupSettingTemplateMemberGroup', 
               'Get-MgGroupSettingTemplateMemberObject', 'Get-MgGroupSite', 
               'Get-MgGroupSiteActivityByInterval', 
               'Get-MgGroupSiteApplicableContentTypeForList', 
               'Get-MgGroupSiteByPath', 
               'Get-MgGroupSiteContentTypeCompatibleHubContentType', 
               'Get-MgGroupSiteListContentTypeCompatibleHubContentType', 
               'Get-MgGroupSiteListItemActivityByInterval', 'Get-MgGroupThread', 
               'Get-MgGroupThreadCount', 'Get-MgGroupThreadPost', 
               'Get-MgGroupThreadPostAttachment', 
               'Get-MgGroupThreadPostAttachmentCount', 
               'Get-MgGroupThreadPostCount', 'Get-MgGroupThreadPostExtension', 
               'Get-MgGroupThreadPostExtensionCount', 
               'Get-MgGroupThreadPostInReplyToAttachment', 
               'Get-MgGroupThreadPostInReplyToAttachmentCount', 
               'Get-MgGroupThreadPostInReplyToExtension', 
               'Get-MgGroupThreadPostInReplyToExtensionCount', 
               'Get-MgGroupTransitiveMember', 
               'Get-MgGroupTransitiveMemberAsApplication', 
               'Get-MgGroupTransitiveMemberAsDevice', 
               'Get-MgGroupTransitiveMemberAsGroup', 
               'Get-MgGroupTransitiveMemberAsOrgContact', 
               'Get-MgGroupTransitiveMemberAsServicePrincipal', 
               'Get-MgGroupTransitiveMemberAsUser', 
               'Get-MgGroupTransitiveMemberCount', 'Get-MgGroupTransitiveMemberOf', 
               'Get-MgGroupTransitiveMemberOfAsAdministrativeUnit', 
               'Get-MgGroupTransitiveMemberOfAsGroup', 
               'Get-MgGroupTransitiveMemberOfCount', 
               'Grant-MgGroupDriveItemPermission', 
               'Grant-MgGroupDriveRootPermission', 'Grant-MgGroupSitePermission', 
               'Invoke-MgAcceptGroupCalendarEvent', 
               'Invoke-MgAcceptGroupCalendarEventTentatively', 
               'Invoke-MgAcceptGroupEvent', 'Invoke-MgAcceptGroupEventTentatively', 
               'Invoke-MgCalendarGroupCalendar', 'Invoke-MgCheckinGroupDriveItem', 
               'Invoke-MgCheckinGroupDriveRoot', 'Invoke-MgCheckoutGroupDriveItem', 
               'Invoke-MgCheckoutGroupDriveRoot', 
               'Invoke-MgDeclineGroupCalendarEvent', 'Invoke-MgDeclineGroupEvent', 
               'Invoke-MgDismissGroupCalendarEventReminder', 
               'Invoke-MgDismissGroupEventReminder', 
               'Invoke-MgFollowGroupDriveItem', 'Invoke-MgFollowGroupDriveRoot', 
               'Invoke-MgForwardGroupCalendarEvent', 
               'Invoke-MgForwardGroupConversationThreadPost', 
               'Invoke-MgForwardGroupConversationThreadPostInReplyTo', 
               'Invoke-MgForwardGroupEvent', 'Invoke-MgForwardGroupThreadPost', 
               'Invoke-MgForwardGroupThreadPostInReplyTo', 'Invoke-MgGraphGroup', 
               'Invoke-MgGraphGroupDrive', 'Invoke-MgInviteGroupDriveItem', 
               'Invoke-MgInviteGroupDriveRoot', 'Invoke-MgPreviewGroupDriveItem', 
               'Invoke-MgPreviewGroupDriveRoot', 
               'Invoke-MgPreviewGroupOnenotePage', 
               'Invoke-MgReauthorizeGroupDriveItemSubscription', 
               'Invoke-MgReauthorizeGroupDriveListSubscription', 
               'Invoke-MgReauthorizeGroupDriveRootSubscription', 
               'Invoke-MgReauthorizeGroupSiteListSubscription', 
               'Invoke-MgRecentGroupDrive', 'Invoke-MgRenewGroup', 
               'Invoke-MgReplyGroupConversationThread', 
               'Invoke-MgReplyGroupConversationThreadPost', 
               'Invoke-MgReplyGroupConversationThreadPostInReplyTo', 
               'Invoke-MgReplyGroupThread', 'Invoke-MgReplyGroupThreadPost', 
               'Invoke-MgReplyGroupThreadPostInReplyTo', 
               'Invoke-MgSnoozeGroupCalendarEventReminder', 
               'Invoke-MgSnoozeGroupEventReminder', 
               'Invoke-MgSubscribeGroupByMail', 'Invoke-MgUnfollowGroupDriveItem', 
               'Invoke-MgUnfollowGroupDriveRoot', 
               'Join-MgGroupDriveListContentTypeWithHubSite', 
               'Join-MgGroupSiteContentTypeWithHubSite', 
               'Join-MgGroupSiteListContentTypeWithHubSite', 'New-MgGroup', 
               'New-MgGroupAcceptedSenderByRef', 'New-MgGroupConversation', 
               'New-MgGroupConversationThread', 
               'New-MgGroupConversationThreadPostAttachment', 
               'New-MgGroupConversationThreadPostAttachmentUploadSession', 
               'New-MgGroupConversationThreadPostExtension', 
               'New-MgGroupConversationThreadPostInReplyToAttachment', 
               'New-MgGroupConversationThreadPostInReplyToAttachmentUploadSession', 
               'New-MgGroupConversationThreadPostInReplyToExtension', 
               'New-MgGroupDriveItemLink', 'New-MgGroupDriveItemUploadSession', 
               'New-MgGroupDriveRootLink', 'New-MgGroupDriveRootUploadSession', 
               'New-MgGroupExtension', 'New-MgGroupLifecyclePolicy', 
               'New-MgGroupMember', 'New-MgGroupMemberByRef', 'New-MgGroupOwner', 
               'New-MgGroupOwnerByRef', 'New-MgGroupPermissionGrant', 
               'New-MgGroupRejectedSenderByRef', 'New-MgGroupSetting', 
               'New-MgGroupSettingTemplateGroupSettingTemplate', 
               'New-MgGroupThread', 'New-MgGroupThreadPostAttachment', 
               'New-MgGroupThreadPostAttachmentUploadSession', 
               'New-MgGroupThreadPostExtension', 
               'New-MgGroupThreadPostInReplyToAttachment', 
               'New-MgGroupThreadPostInReplyToAttachmentUploadSession', 
               'New-MgGroupThreadPostInReplyToExtension', 
               'Publish-MgGroupDriveListContentType', 
               'Publish-MgGroupSiteContentType', 
               'Publish-MgGroupSiteListContentType', 'Remove-MgGroup', 
               'Remove-MgGroupAcceptedSenderByRef', 'Remove-MgGroupConversation', 
               'Remove-MgGroupConversationThread', 
               'Remove-MgGroupConversationThreadPostAttachment', 
               'Remove-MgGroupConversationThreadPostExtension', 
               'Remove-MgGroupConversationThreadPostInReplyToAttachment', 
               'Remove-MgGroupConversationThreadPostInReplyToExtension', 
               'Remove-MgGroupExtension', 'Remove-MgGroupFavorite', 
               'Remove-MgGroupFromLifecyclePolicy', 
               'Remove-MgGroupLifecyclePolicy', 'Remove-MgGroupMemberByRef', 
               'Remove-MgGroupOwnerByRef', 'Remove-MgGroupPermissionGrant', 
               'Remove-MgGroupPhoto', 'Remove-MgGroupRejectedSenderByRef', 
               'Remove-MgGroupSetting', 
               'Remove-MgGroupSettingTemplateGroupSettingTemplate', 
               'Remove-MgGroupSite', 'Remove-MgGroupThread', 
               'Remove-MgGroupThreadPostAttachment', 
               'Remove-MgGroupThreadPostExtension', 
               'Remove-MgGroupThreadPostInReplyToAttachment', 
               'Remove-MgGroupThreadPostInReplyToExtension', 
               'Reset-MgGroupUnseenCount', 'Restore-MgGroupDriveItem', 
               'Restore-MgGroupDriveItemListItemDocumentSetVersion', 
               'Restore-MgGroupDriveItemListItemVersion', 
               'Restore-MgGroupDriveItemVersion', 
               'Restore-MgGroupDriveListItemDocumentSetVersion', 
               'Restore-MgGroupDriveListItemVersion', 'Restore-MgGroupDriveRoot', 
               'Restore-MgGroupDriveRootListItemDocumentSetVersion', 
               'Restore-MgGroupDriveRootListItemVersion', 
               'Restore-MgGroupDriveRootVersion', 'Restore-MgGroupSettingTemplate', 
               'Restore-MgGroupSiteListItemDocumentSetVersion', 
               'Restore-MgGroupSiteListItemVersion', 'Search-MgGroupDrive', 
               'Search-MgGroupDriveItem', 'Search-MgGroupDriveRoot', 
               'Set-MgGroupLicense', 'Set-MgGroupPhotoContent', 
               'Stop-MgGroupCalendarEvent', 'Stop-MgGroupEvent', 
               'Test-MgGroupDriveItemPermission', 
               'Test-MgGroupDriveListContentTypePublished', 
               'Test-MgGroupDriveRootPermission', 
               'Test-MgGroupPermissionGrantProperty', 'Test-MgGroupProperty', 
               'Test-MgGroupSettingTemplateProperty', 
               'Test-MgGroupSiteContentTypePublished', 
               'Test-MgGroupSiteListContentTypePublished', 
               'Unpublish-MgGroupDriveListContentType', 
               'Unpublish-MgGroupSiteContentType', 
               'Unpublish-MgGroupSiteListContentType', 'Update-MgGroup', 
               'Update-MgGroupConversationThread', 
               'Update-MgGroupConversationThreadPostExtension', 
               'Update-MgGroupConversationThreadPostInReplyToExtension', 
               'Update-MgGroupExtension', 'Update-MgGroupLifecyclePolicy', 
               'Update-MgGroupOnenotePageContent', 'Update-MgGroupPermissionGrant', 
               'Update-MgGroupPhoto', 'Update-MgGroupSetting', 
               'Update-MgGroupSettingTemplateGroupSettingTemplate', 
               'Update-MgGroupThread', 'Update-MgGroupThreadPostExtension', 
               'Update-MgGroupThreadPostInReplyToExtension'

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
# MIInkwYJKoZIhvcNAQcCoIInhDCCJ4ACAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCTZQG5F3fwkbR+
# 55RhoBlz3o0CMOHhtSkkkmAFPF+GKKCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# /Xmfwb1tbWrJUnMTDXpQzTGCGXMwghlvAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAANOtTx6wYRv6ysAAAAAA04wDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIDcBbnGdPVRhFuL1+MXrDzgZ
# OglqIDQTHqE9lEsYvnv1MEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAb46aBs63nUHg+jWTJ7hl8rEHOrM4I7TvmpDXzvHsXtpiv27gGyaaqQhn
# /s/z1IPH4f2Ir2pEwpZZMEXfOzC5GlJ6kjAEKK0/cAeZ3v/WkRhA5yAVsdtfu59x
# AdlzZGZVh1m3r6eiljDbnYk3RDiKzVM1cCbfrbPU96FFPYdS+bW5XJfuu+0EjTOK
# EbqdctpUOSJPTlr6bwxk9Fa1fU7GaG5nNW8yeN4xmkQlZTzhdLqiwT86MPIyZwWc
# GkybweKDW72rMTguoclwLHctsmCpqq8y4SkrMgMXZ0rqbMqZWEZOwE6pex9hHjTN
# BwtwpC1tcf0mK3N7m0q7H2L1/T8h8KGCFv0wghb5BgorBgEEAYI3AwMBMYIW6TCC
# FuUGCSqGSIb3DQEHAqCCFtYwghbSAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFRBgsq
# hkiG9w0BCRABBKCCAUAEggE8MIIBOAIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCBy/PHcKxCmy4+HSIC/vUxO1VjBYs2zKJVa/xys18aR3QIGZFzcZON9
# GBMyMDIzMDUxNjE1NDM1My45MTJaMASAAgH0oIHQpIHNMIHKMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1l
# cmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjozQkJELUUz
# MzgtRTlBMTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaCC
# EVQwggcMMIIE9KADAgECAhMzAAABxjDNLtbTocD0AAEAAAHGMA0GCSqGSIb3DQEB
# CwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNV
# BAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMB4XDTIyMTEwNDE5MDEz
# NFoXDTI0MDIwMjE5MDEzNFowgcoxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMx
# JjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjNCQkQtRTMzOC1FOUExMSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIICIjANBgkqhkiG9w0BAQEF
# AAOCAg8AMIICCgKCAgEA770iOr6v4Hk1m3SZj+1BR/iuofv+f6eVb7Hc21YxzAzr
# o4G6kKXF47YAsEgrWWT1ogvp0IroFm8CdRZTf/DlQ0fbNNO9pCA01KJ03zH82Clm
# k9ze9r1jPJ1ZJaMnsZmAy7VpY9mNqX9dhPvnW1/ZxbbiHv7qwwgw9U2ST5mfcpPu
# tsI/Qr/gLC6aTI3UCYziVPZ/Qfag8NQhKkpHZO3Kr5r83cy7jz4OWPy5M2WitWv5
# bJJ5rBTW518QPEzFwzq8e8P722CWKZJFjN8etBgsK05gHeHaN9kmlpYJJL84v9Ji
# aX7NFJkORhApEFZiUIaZoLxJt4pcBDzf+WD9UAjRKCrAseJ/ckzQvOn95X4Ot4as
# nOuNhcCdcQWcrZoykFmEaoYkrsD7n/4nFFHwJDKUaBYZZLwPj7ux48S1Ye+cMccM
# xdRSjuoG4rqJqpEd6gzfz239v36L+LtOlQhfL5cnclhNSWdmKw1THyekH96RNtOp
# IE7c+9Tnsv1aE9hphejLOJxfsXTkyw0FIdilc0CP7zzUsqaCGF2mFXRwL4jfX1Ry
# V7QGKEeOpvGZqQKLHVZbLD32ztW8Lfv99xQ24d/TIxO9LReuHsnwotn+8BsCrzu+
# /24vOcA9Xcpd7kIeW4zmUxhFsv4KCfiqMptZhhMAA0SqDuj23cj10smXROLUnhUC
# AwEAAaOCATYwggEyMB0GA1UdDgQWBBRxX/lHiShECp1n2lMa6G1uLvNglDAfBgNV
# HSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNVHR8EWDBWMFSgUqBQhk5o
# dHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNyb3NvZnQlMjBU
# aW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYIKwYBBQUHAQEEYDBeMFwG
# CCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRz
# L01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNydDAMBgNV
# HRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IC
# AQALzF724jXugDU486PMBYR7Cc6aHr2nJDnGsnkqwZYmjRi28qv6S1Ly772zwm5D
# I189zgAQ99xhEjW6uYkrX5UrtVu7JUQP6bBBBJ98c28FAIPIK3fkQNCv2rxRjfQM
# JSdcwsJeTK7Ld09OuA5hY4PWCBgJpfY71LcaXz3FR8ANPFX6zcKYbgYOZregtpDu
# b34N0QhR7wc/FcmV+g4I3IdTAoMD2/WI5ZsfKTzBUn/U3ApUhNwbOl5YSC+f9S1L
# StbZLwPzMS+fLPXJUSe7SSvspfSsr/VEe0oQhmaR+5vcq+7MLw861WBVhYpJ7TB5
# YBS5ORO9XdIbcpbBFwcHPmb8iZqSIqW9JpgG76+5NQULPVzZ75z5W2R5ZiyQktiH
# pMwjX2OO29Z8+nTw2tOsVCcwzH9LoELedv3PjcpbwOyLjtm1T4XHYd3qbd9DXoBj
# NYkSjdi37pNp58u+rITltLKOjjQCJwj1FpnuBY825B5C0uC/NYESEKsTicEjhS/4
# ujBXLcNGDhVBl2vHE6qY/YW4ky1vcypvUrsG81gpv2+8/ihOwg4wTLO7XqikeIiU
# 3ZWAUAoOpTl14tedQqxbHTDveJYR3OU0yKB2xwf87EWCAb0CJimhDmyQaKEvSV0f
# LW9iVyI0wYcG4V2aVN6TrZ4mr+ffaqDQD9F+HpPhP0plAzCCB3EwggVZoAMCAQIC
# EzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBS
# b290IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDEwMB4XDTIxMDkzMDE4MjIyNVoX
# DTMwMDkzMDE4MzIyNVowfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwggIi
# MA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDk4aZM57RyIQt5osvXJHm9DtWC
# 0/3unAcH0qlsTnXIyjVX9gF/bErg4r25PhdgM/9cT8dm95VTcVrifkpa/rg2Z4VG
# Iwy1jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPFdvWGUNzBRMhxXFExN6AKOG6N7dcP
# 2CZTfDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6GnszrYBbfowQHJ1S/rboYiXcag/P
# XfT+jlPP1uyFVk3v3byNpOORj7I5LFGc6XBpDco2LXCOMcg1KL3jtIckw+DJj361
# VI/c+gVVmG1oO5pGve2krnopN6zL64NF50ZuyjLVwIYwXE8s4mKyzbnijYjklqwB
# Sru+cakXW2dg3viSkR4dPf0gz3N9QZpGdc3EXzTdEonW/aUgfX782Z5F37ZyL9t9
# X4C626p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0lBw0gg/wEPK3Rxjtp+iZfD9M269e
# wvPV2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1qGFphAXPKZ6Je1yh2AuIzGHLXpyDw
# wvoSCtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ+QuJYfM2BjUYhEfb3BvR/bLUHMVr
# 9lxSUV0S2yW6r1AFemzFER1y7435UsSFF5PAPBXbGjfHCBUYP3irRbb1Hode2o+e
# FnJpxq57t7c+auIurQIDAQABo4IB3TCCAdkwEgYJKwYBBAGCNxUBBAUCAwEAATAj
# BgkrBgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxGNSnPEP8vBO4wHQYDVR0OBBYEFJ+n
# FV0AXmJdg/Tl0mWnG1M1GelyMFwGA1UdIARVMFMwUQYMKwYBBAGCN0yDfQEBMEEw
# PwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvRG9j
# cy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAKBggrBgEFBQcDCDAZBgkrBgEEAYI3
# FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAf
# BgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNS
# b29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0Nl
# ckF1dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG9w0BAQsFAAOCAgEAnVV9/Cqt4Swf
# ZwExJFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0xM7U518JxNj/aZGx80HU5bbsPMeTC
# j/ts0aGUGCLu6WZnOlNN3Zi6th542DYunKmCVgADsAW+iehp4LoJ7nvfam++Kctu
# 2D9IdQHZGN5tggz1bSNU5HhTdSRXud2f8449xvNo32X2pFaq95W2KFUn0CS9QKC/
# GbYSEhFdPSfgQJY4rPf5KYnDvBewVIVCs/wMnosZiefwC2qBwoEZQhlSdYo2wh3D
# YXMuLGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDSPeZKPmY7T7uG+jIa2Zb0j/aRAfbO
# xnT99kxybxCrdTDFNLB62FD+CljdQDzHVG2dY3RILLFORy3BFARxv2T5JL5zbcqO
# Cb2zAVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxnGSgkujhLmm77IVRrakURR6nxt67I
# 6IleT53S0Ex2tVdUCbFpAUR+fKFhbHP+CrvsQWY9af3LwUFJfn6Tvsv4O+S3Fb+0
# zj6lMVGEvL8CwYKiexcdFYmNcP7ntdAoGokLjzbaukz5m/8K6TT4JDVnK+ANuOaM
# mdbhIurwJ0I9JZTmdHRbatGePu1+oDEzfbzL6Xu/OHBE0ZDxyKs6ijoIYn/ZcGNT
# TY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLLMIICNAIBATCB+KGB0KSBzTCByjEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWlj
# cm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBF
# U046M0JCRC1FMzM4LUU5QTExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAC01yuYmIVvsokSacJmWe8Mu2QFtoIGD
# MIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNV
# BAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQG
# A1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJKoZIhvcNAQEF
# BQACBQDoDfJMMCIYDzIwMjMwNTE2MjAxNTA4WhgPMjAyMzA1MTcyMDE1MDhaMHQw
# OgYKKwYBBAGEWQoEATEsMCowCgIFAOgN8kwCAQAwBwIBAAICATEwBwIBAAICEr4w
# CgIFAOgPQ8wCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYBBAGEWQoDAqAKMAgC
# AQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOBgQAiXjCYRoOqahmu
# OZsA7HkOXTl6WPcvJwoEoxc77xsw//epTyq4bSDTX/9HPVOeE5fYRPUxESbyj6nU
# 0KLzi4ObDcamKMJgBjBC2yX4rCirTJfw1r6wAa8nfGnwOcd9Xwc0zUxbiTDJfDQ2
# sp7mOBxCe3L67uEkHIJfa7saCfkzGTGCBA0wggQJAgEBMIGTMHwxCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABxjDNLtbTocD0AAEAAAHGMA0GCWCGSAFl
# AwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQwLwYJKoZIhvcN
# AQkEMSIEIFQCXSCSWvIH+ycpbsv/nXnIVGzua8Mkkdgur7FCdsncMIH6BgsqhkiG
# 9w0BCRACLzGB6jCB5zCB5DCBvQQgVjETXFXJvZgpxiZqk/BwDWA5Pxw6hehULpkF
# r9rjry0wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAA
# AcYwzS7W06HA9AABAAABxjAiBCDX8uYUbAs1hELM3VO9Scwj2cFMk+UPXX5CNA5H
# 1anlizANBgkqhkiG9w0BAQsFAASCAgCwMKYMSteOu6RexeAAtUEf4T37XbUQtkoF
# s+p4IhUwliLFEnd5PBicidfYMCjPWJa4xc1xNKxk6JmM016fgmnu9KCcfYE6uLI2
# Aw/xcEVFBFUwNNWJCc8twO3zL8VlzptvA1EiE5fZwSMeuZlyWa0Y58KiJyEcHfrA
# 5DRDnq+owz56e6LgB9fccNHkB4XqSLRwEcPgkJZ0snMmhBvJeueEzRcbBfD7WLDX
# y/DEVgZRCgRlTl3Yoc3ShtWKrNzs0C7pnRR9ZMziplwyhD0aPeZku+Yi72ilD9z3
# RDQ6xAPbsF8C6RyNygYMXJjUd2XxlesltkNw0s4TNejIE4+Kk5AO6xpRN9koqPzt
# /qznuazX+UtvIClebcPLwTsJp9APg4QueYh9CuS0M9ObSunixCSRJhFv3nKSX6v0
# Az7Ya88GH0Z0mk1ZKXh+jXy5I1MwsuBQzcsYhNB5ut4m1xs2Ostot4Q4GsWv8rmI
# NZaYwPOOE6gpFK1iyUAc0gBVsxhZupkOjpp9Nz5vUhfsB4+7FyK9AkFid6hNWUZn
# wlVS5f/mEtrAfgsHPPZ83tsRfCgfJAryVM7oRB4B9y7eOEK0Q/8X6eZnIm4H0HZU
# qipA4hUyTZ7UJRnkEy7CZo8XWqqBrJ9O9nBHB0gxTOHIMR5SK7kIaH9fZElIKPQm
# c/LL0uvRvw==
# SIG # End signature block
