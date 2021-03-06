#
# Module manifest for module 'Microsoft.Xrm.Tooling.ConfigurationMigration'
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Microsoft.Xrm.Tooling.ConfigurationMigration.psm1'

# Version number of this module.
ModuleVersion = '1.0.0.53'

# ID used to uniquely identify this module
GUID = '162392C2-EDE9-4754-B5A3-7DE42E5C768C'

# Author of this module
Author = 'Microsoft Common Data Service Team'

# Company or vendor of this module
CompanyName = 'Microsoft'

# Copyright statement for this module
Copyright = '© 2020 Microsoft Corporation. All rights reserved'

# Description of the functionality provided by this module
Description = 'PowerShell Module for Microsoft Dynamics CRM Configuration Migration Utility'

# Minimum version of the Windows PowerShell engine required by this module
#PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
#PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
#PowerShellHostVersion = ''

# Minimum version of the .NET Framework required by this module
#DotNetFrameworkVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module
#CLRVersion = '4.0'

# Processor architecture (None, X86, Amd64) required by this module
#ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
#RequiredModules = 

# Assemblies that must be loaded prior to importing this module
#RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
#ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
#TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
#FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @(
	'Microsoft.Xrm.Tooling.ConfigurationMigration.dll'
	)

# Functions to export from this module
FunctionsToExport = @()

# Cmdlets to export from this module
CmdletsToExport = @(
	'Import-CrmDataFile'
	'Export-CrmDataFile'
	)

# Variables to export from this module
VariablesToExport = @(
	)

# Aliases to export from this module
AliasesToExport = @(
	)

# List of all modules packaged with this module.
ModuleList = @(
	'Microsoft.Xrm.Tooling.ConfigurationMigration'
	)

# List of all files packaged with this module
#FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        LicenseUri = 'https://go.microsoft.com/fwlink/?linkid=2108407'

        # A URL to the main website for this project.
        #ProjectUri = 'https://docs.microsoft.com/powershell/module/microsoft.xrm.tooling.crmconnector.powershell/?view=dynamics365ce-ps'

        # A URL to an icon representing this module.
        IconUri = 'https://connectoricons-prod.azureedge.net/powerappsforappmakers/icon_1.0.1056.1255.png'


        # ReleaseNotes of this module
        ReleaseNotes = '

1.0.0.53
Corrected an issue that would cause CMT to hang when executing prefetch. this situation was caused by very large record counts in entities that were being prefetched.
Corrected an issue with CMT where a failure to import would occur if, during the decision process for update vs insert, an existing record was not found by ID and the Name field of the record was null
 This would only impact default search patterns.  Entities that defined custom searchs would not be impacted.

1.0.0.52:
Fixed an issue with Batch mode import that is caused by invalid guids being hand edited into datafiles.
Fixed an issue where CMT would prefer ID/Name over comparison keys when precaching data for comparison.

1.0.0.51:
Fix in Data import to compensate for Import files created during a window of time where new virtual fields generated by CDS were incorrectly identified as valid fields.
This issue would cause schema validation to fail during import of complex data for some types of attributeOf type fields. 
Up-taking fixes for Sovereign cloud discovery connectivity for login controls

1.0.0.49:
Fixed an issue where data import could hang without error
Added new optional parameter called PrefetchRecordLimitCount ( defaults to 4000 ) this controls the number of records that are prefetched when doing pre-validation during import.
Fix for an issue where importing business units that included a lookup for their own team (looped back to the entity) would not be populated on update.
Fixed a general issue were related LookUp IDs that were discovered in the target system were not properly linked.
Behavior Change: when using BatchMode, Create will always include the ID of the record from the source system, even if not explicitly included as a field in the exported system.

3.3.0.891:
Fix for an issue reported where related objects were not being correctly identified by name and thus not correctly linked to importing records
This only impacted imports where the related entity did not have comparison keys

1.0.0.35:
Fix for Entity model changes in CDS to support filtering out non importable fields introduced by new entity types.

1.0.0.34:
Fix for a fail to import bug that can occur if an incoming data file has either a state or status code but not both
Fix for a non-failing data error that can occur when creating pre-parse data for import. 
Fix for activating Duplicate Detection rules properly post when present.

1.0.0.32:
Speculative fix for Concurrency issue with Batch and Threaded Mode import. 
Modified threaded import to improve performance and throughput. 

1.0.0.29:
Fixed a bug where status of a record would not be updated for records in an active state. 
Fixed a bug in batch mode when the client is provided only 1 connection to work with.
Optimized updates for state/status events to prevent unnecessary updates to Cds. (only affects version 9.0 +)
Reduced chattiness of logs, logs will now only emit once for the same type per thread. 

1.0.0.26:
Fixed an issue preventing logs from being generated correctly,  Logs should once again write to the log directory

1.0.0.21:
Added new cmdlet switch called EmitLogToConsole.  When set, the log will be written to the console of the powershell session in addition to logs.  Intended to used in conjunction with the -verbose parameter 
Increased default timeout for Export-CrmData cmdlet. 
Added 2 new parameters to Import-CrmData
	EnabledBatchMode – instructs CMT to import into CDS using batches ( default size of 600 records ).  Note this does work in conjunction with multiple connections,  thus 2 connections creates 2 batches of 600 records. 
	BatchSize -  Allows you to override the default batch size ( 600 records ).  
Fixed a bug with pre-processing in CMT that would cause the system to runout of memory when importing to entities that had large numbers of records. 


1.0.0.16:
    Inital release for Configuration Migration Tool Powershell. 
        '

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
#HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
#DefaultCommandPrefix = ''

}

# SIG # Begin signature block
# MIIdhAYJKoZIhvcNAQcCoIIddTCCHXECAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUnZCCcsvy/7Lua/JIOmLRPV1t
# 9VOgghhuMIIE3jCCA8agAwIBAgITMwAAAVHhnaLdc5Ns4gAAAAABUTANBgkqhkiG
# 9w0BAQUFADB3MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSEw
# HwYDVQQDExhNaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EwHhcNMTkxMjE5MDExMjU3
# WhcNMjEwMzE3MDExMjU3WjCBzjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJp
# Y28xJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkM0QkQtRTM3Ri01RkZDMSUwIwYD
# VQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0B
# AQEFAAOCAQ8AMIIBCgKCAQEAn0TdP5K/Mq0KvkyDgezTjVPR0wTFeCpYQlFrenlP
# xgWtaGPcjSFuG1DvnB06CxaHVse5yCkScG17OFaWKGc00cQcFyAn/Wi8f83S0QJ0
# Ei5ooE5ZbYkvtRGT/tOBeP8qwoEezai5Ak5SIjeFop2G9GqfylsDW4DPOaamMAQd
# 1XjtK5sPDW/BZfMydyhsRd278RmjP/NV6RsEUbA6RP3fbaww9jjtzFog0+C8whRn
# cu97b1cDA+l8xVTQ+2Ri6FWqko6rrqZrMJvIuPCSSHzcqvKP7etQXo3aIfLAqpVU
# maVs0N+yPbpVkXVx8k3e0fAO7JQhWdqK59MSEnbCRCVTLQIDAQABo4IBCTCCAQUw
# HQYDVR0OBBYEFHMDkahvJdFFJ58qR5xUK9MXXNRyMB8GA1UdIwQYMBaAFCM0+NlS
# RnAK7UD7dvuzK7DDNbMPMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly9jcmwubWlj
# cm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY3Jvc29mdFRpbWVTdGFtcFBD
# QS5jcmwwWAYIKwYBBQUHAQEETDBKMEgGCCsGAQUFBzAChjxodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY3Jvc29mdFRpbWVTdGFtcFBDQS5jcnQw
# EwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQEFBQADggEBAFt9ajhbJG/B
# aL9QT458J0Sbe5s3MyziSDFHGDvarn6b9z1J70P357zlvriHW4nGhtoerbi2G1+L
# JmQpi9Fmj9r6JJdzwlaoo4ySM48K5YDCX3cw6x+OE8X/IxbGcs4Y96qenJdMQGrt
# jAp4eI2G6y/hyo2ePCvKTgGdIz29WDAT51thdkmEyXmHMr/1dn0PXIF1Y+8xzJIs
# eUWksL8RqUdAWZHtuhOneFks6kQFU+MId7HNQpehNUqvwPib3uiT++VU6FBj0exl
# 92wadjD1Sk7be5/yRQQhFOzM4NT16jxHYo0+puJfJIxFQlr/ODCormil00JAEqUj
# gO1PPk1M6iowggX/MIID56ADAgECAhMzAAABh3IXchVZQMcJAAAAAAGHMA0GCSqG
# SIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# KDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwHhcNMjAw
# MzA0MTgzOTQ3WhcNMjEwMzAzMTgzOTQ3WjB0MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNyb3NvZnQgQ29ycG9yYXRpb24w
# ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDOt8kLc7P3T7MKIhouYHew
# MFmnq8Ayu7FOhZCQabVwBp2VS4WyB2Qe4TQBT8aBznANDEPjHKNdPT8Xz5cNali6
# XHefS8i/WXtF0vSsP8NEv6mBHuA2p1fw2wB/F0dHsJ3GfZ5c0sPJjklsiYqPw59x
# J54kM91IOgiO2OUzjNAljPibjCWfH7UzQ1TPHc4dweils8GEIrbBRb7IWwiObL12
# jWT4Yh71NQgvJ9Fn6+UhD9x2uk3dLj84vwt1NuFQitKJxIV0fVsRNR3abQVOLqpD
# ugbr0SzNL6o8xzOHL5OXiGGwg6ekiXA1/2XXY7yVFc39tledDtZjSjNbex1zzwSX
# AgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEEAYI3TAgBBggrBgEFBQcDAzAd
# BgNVHQ4EFgQUhov4ZyO96axkJdMjpzu2zVXOJcswUAYDVR0RBEkwR6RFMEMxKTAn
# BgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMRYwFAYDVQQF
# Ew0yMzAwMTIrNDU4Mzg1MB8GA1UdIwQYMBaAFEhuZOVQBdOCqhc3NyK1bajKdQKV
# MFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lv
# cHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0wNy0wOC5jcmwwYQYIKwYBBQUH
# AQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtp
# b3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0wNy0wOC5jcnQwDAYDVR0T
# AQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAixmyS6E6vprWD9KFNIB9G5zyMuIj
# ZAOuUJ1EK/Vlg6Fb3ZHXjjUwATKIcXbFuFC6Wr4KNrU4DY/sBVqmab5AC/je3bpU
# pjtxpEyqUqtPc30wEg/rO9vmKmqKoLPT37svc2NVBmGNl+85qO4fV/w7Cx7J0Bbq
# k19KcRNdjt6eKoTnTPHBHlVHQIHZpMxacbFOAkJrqAVkYZdz7ikNXTxV+GRb36tC
# 4ByMNxE2DF7vFdvaiZP0CVZ5ByJ2gAhXMdK9+usxzVk913qKde1OAuWdv+rndqkA
# Im8fUlRnr4saSCg7cIbUwCCf116wUJ7EuJDg0vHeyhnCeHnBbyH3RZkHEi2ofmfg
# nFISJZDdMAeVZGVOh20Jp50XBzqokpPzeZ6zc1/gyILNyiVgE+RPkjnUQshd1f1P
# Mgn3tns2Cz7bJiVUaqEO3n9qRFgy5JuLae6UweGfAeOo3dgLZxikKzYs3hDMaEtJ
# q8IP71cX7QXe6lnMmXU/Hdfz2p897Zd+kU+vZvKI3cwLfuVQgK2RZ2z+Kc3K3dRP
# z2rXycK5XCuRZmvGab/WbrZiC7wJQapgBodltMI5GMdFrBg9IeF7/rP4EqVQXeKt
# evTlZXjpuNhhjuR+2DMt/dWufjXpiW91bo3aH6EajOALXmoxgltCp1K7hrS6gmsv
# j94cLRf50QQ4U8QwggYHMIID76ADAgECAgphFmg0AAAAAAAcMA0GCSqGSIb3DQEB
# BQUAMF8xEzARBgoJkiaJk/IsZAEZFgNjb20xGTAXBgoJkiaJk/IsZAEZFgltaWNy
# b3NvZnQxLTArBgNVBAMTJE1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhv
# cml0eTAeFw0wNzA0MDMxMjUzMDlaFw0yMTA0MDMxMzAzMDlaMHcxCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xITAfBgNVBAMTGE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ+h
# bLHf20iSKnxrLhnhveLjxZlRI1Ctzt0YTiQP7tGn0UytdDAgEesH1VSVFUmUG0KS
# rphcMCbaAGvoe73siQcP9w4EmPCJzB/LMySHnfL0Zxws/HvniB3q506jocEjU8qN
# +kXPCdBer9CwQgSi+aZsk2fXKNxGU7CG0OUoRi4nrIZPVVIM5AMs+2qQkDBuh/NZ
# MJ36ftaXs+ghl3740hPzCLdTbVK0RZCfSABKR2YRJylmqJfk0waBSqL5hKcRRxQJ
# gp+E7VV4/gGaHVAIhQAQMEbtt94jRrvELVSfrx54QTF3zJvfO4OToWECtR0Nsfz3
# m7IBziJLVP/5BcPCIAsCAwEAAaOCAaswggGnMA8GA1UdEwEB/wQFMAMBAf8wHQYD
# VR0OBBYEFCM0+NlSRnAK7UD7dvuzK7DDNbMPMAsGA1UdDwQEAwIBhjAQBgkrBgEE
# AYI3FQEEAwIBADCBmAYDVR0jBIGQMIGNgBQOrIJgQFYnl+UlE/wq4QpTlVnkpKFj
# pGEwXzETMBEGCgmSJomT8ixkARkWA2NvbTEZMBcGCgmSJomT8ixkARkWCW1pY3Jv
# c29mdDEtMCsGA1UEAxMkTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9y
# aXR5ghB5rRahSqClrUxzWPQHEy5lMFAGA1UdHwRJMEcwRaBDoEGGP2h0dHA6Ly9j
# cmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL21pY3Jvc29mdHJvb3Rj
# ZXJ0LmNybDBUBggrBgEFBQcBAQRIMEYwRAYIKwYBBQUHMAKGOGh0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljcm9zb2Z0Um9vdENlcnQuY3J0MBMG
# A1UdJQQMMAoGCCsGAQUFBwMIMA0GCSqGSIb3DQEBBQUAA4ICAQAQl4rDXANENt3p
# tK132855UU0BsS50cVttDBOrzr57j7gu1BKijG1iuFcCy04gE1CZ3XpA4le7r1ia
# HOEdAYasu3jyi9DsOwHu4r6PCgXIjUji8FMV3U+rkuTnjWrVgMHmlPIGL4UD6ZEq
# JCJw+/b85HiZLg33B+JwvBhOnY5rCnKVuKE5nGctxVEO6mJcPxaYiyA/4gcaMvnM
# MUp2MT0rcgvI6nA9/4UKE9/CCmGO8Ne4F+tOi3/FNSteo7/rvH0LQnvUU3Ih7jDK
# u3hlXFsBFwoUDtLaFJj1PLlmWLMtL+f5hYbMUVbonXCUbKw5TNT2eb+qGHpiKe+i
# myk0BncaYsk9Hm0fgvALxyy7z0Oz5fnsfbXjpKh0NbhOxXEjEiZ2CzxSjHFaRkMU
# vLOzsE1nyJ9C/4B5IYCeFTBm6EISXhrIniIh0EPpK+m79EjMLNTYMoBMJipIJF9a
# 6lbvpt6Znco6b72BJ3QGEe52Ib+bgsEnVLaxaj2JoXZhtG6hE6a/qkfwEm/9ijJs
# sv7fUciMI8lmvZ0dhxJkAj0tr1mPuOQh5bWwymO0eFQF1EEuUKyUsKV4q7OglnUa
# 2ZKHE3UiLzKoCG6gW4wlv6DvhMoh1useT8ma7kng9wFlb4kLfchpyOZu6qeXzjEp
# /w7FW1zYTRuh2Povnj8uVRZryROj/TCCB3owggVioAMCAQICCmEOkNIAAAAAAAMw
# DQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhv
# cml0eSAyMDExMB4XDTExMDcwODIwNTkwOVoXDTI2MDcwODIxMDkwOVowfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMTCCAiIwDQYJKoZIhvcNAQEBBQADggIP
# ADCCAgoCggIBAKvw+nIQHC6t2G6qghBNNLrytlghn0IbKmvpWlCquAY4GgRJun/D
# DB7dN2vGEtgL8DjCmQawyDnVARQxQtOJDXlkh36UYCRsr55JnOloXtLfm1OyCizD
# r9mpK656Ca/XllnKYBoF6WZ26DJSJhIv56sIUM+zRLdd2MQuA3WraPPLbfM6XKEW
# 9Ea64DhkrG5kNXimoGMPLdNAk/jj3gcN1Vx5pUkp5w2+oBN3vpQ97/vjK1oQH01W
# KKJ6cuASOrdJXtjt7UORg9l7snuGG9k+sYxd6IlPhBryoS9Z5JA7La4zWMW3Pv4y
# 07MDPbGyr5I4ftKdgCz1TlaRITUlwzluZH9TupwPrRkjhMv0ugOGjfdf8NBSv4yU
# h7zAIXQlXxgotswnKDglmDlKNs98sZKuHCOnqWbsYR9q4ShJnV+I4iVd0yFLPlLE
# tVc/JAPw0XpbL9Uj43BdD1FGd7P4AOG8rAKCX9vAFbO9G9RVS+c5oQ/pI0m8GLhE
# fEXkwcNyeuBy5yTfv0aZxe/CHFfbg43sTUkwp6uO3+xbn6/83bBm4sGXgXvt1u1L
# 50kppxMopqd9Z4DmimJ4X7IvhNdXnFy/dygo8e1twyiPLI9AN0/B4YVEicQJTMXU
# pUMvdJX3bvh4IFgsE11glZo+TzOE2rCIF96eTvSWsLxGoGyY0uDWiIwLAgMBAAGj
# ggHtMIIB6TAQBgkrBgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQUSG5k5VAF04KqFzc3
# IrVtqMp1ApUwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGG
# MA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUci06AjGQQ7kUBU7h6qfHMdEj
# iTQwWgYDVR0fBFMwUTBPoE2gS4ZJaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3Br
# aS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0MjAxMV8yMDExXzAzXzIyLmNybDBe
# BggrBgEFBQcBAQRSMFAwTgYIKwYBBQUHMAKGQmh0dHA6Ly93d3cubWljcm9zb2Z0
# LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0MjAxMV8yMDExXzAzXzIyLmNydDCB
# nwYDVR0gBIGXMIGUMIGRBgkrBgEEAYI3LgMwgYMwPwYIKwYBBQUHAgEWM2h0dHA6
# Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvZG9jcy9wcmltYXJ5Y3BzLmh0bTBA
# BggrBgEFBQcCAjA0HjIgHQBMAGUAZwBhAGwAXwBwAG8AbABpAGMAeQBfAHMAdABh
# AHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG9w0BAQsFAAOCAgEAZ/KGpZjgVHkaLtPY
# dGcimwuWEeFjkplCln3SeQyQwWVfLiw++MNy0W2D/r4/6ArKO79HqaPzadtjvyI1
# pZddZYSQfYtGUFXYDJJ80hpLHPM8QotS0LD9a+M+By4pm+Y9G6XUtR13lDni6WTJ
# RD14eiPzE32mkHSDjfTLJgJGKsKKELukqQUMm+1o+mgulaAqPyprWEljHwlpblqY
# luSD9MCP80Yr3vw70L01724lruWvJ+3Q3fMOr5kol5hNDj0L8giJ1h/DMhji8MUt
# zluetEk5CsYKwsatruWy2dsViFFFWDgycScaf7H0J/jeLDogaZiyWYlobm+nt3TD
# QAUGpgEqKD6CPxNNZgvAs0314Y9/HG8VfUWnduVAKmWjw11SYobDHWM2l4bf2vP4
# 8hahmifhzaWX0O5dY0HjWwechz4GdwbRBrF1HxS+YWG18NzGGwS+30HHDiju3mUv
# 7Jf2oVyW2ADWoUa9WfOXpQlLSBCZgB/QACnFsZulP0V3HjXG0qKin3p6IvpIlR+r
# +0cjgPWe+L9rt0uX4ut1eBrs6jeZeRhL/9azI2h15q/6/IvrC4DqaTuv/DDtBEyO
# 3991bWORPdGdVk5Pv4BXIqF4ETIheu9BCrE/+6jMpF3BoYibV3FWTkhFwELJm3Zb
# CoBIa/15n8G9bW1qyVJzEw16UM0xggSAMIIEfAIBATCBlTB+MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNyb3NvZnQgQ29k
# ZSBTaWduaW5nIFBDQSAyMDExAhMzAAABh3IXchVZQMcJAAAAAAGHMAkGBSsOAwIa
# BQCggZQwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFNTQrNlmsvxmQdoVw/ZKYmP5
# NbG1MDQGCisGAQQBgjcCAQwxJjAkoBKAEABUAGUAcwB0AFMAaQBnAG6hDoAMaHR0
# cDovL3Rlc3QgMA0GCSqGSIb3DQEBAQUABIIBAJAuDlwNocln2KyHwHrKQZE209IM
# c5bczpSLi15x2l+SHjwaAMgKo1IfH1L8Is28BNK/9UXgZPLYYGEC5aCvUrFX/xGU
# kgUtHLoLONZeu8xgduB6Nem4cNLmlmcM84UDYIMRilm57HXt7i1sN7MpBX6Hcc7G
# RdW3koyV89DluVuK5QP7tmRfRcVgBevml8WXGVeET5hgvHz89t3nba2L6HjmZwC4
# BOaWETLjWabdkuQDdcHbHB+36psOR1JU0in93BKqLMI+t045rgWWhoMiNkVkGiy6
# PxFN3b6LXvh+XdHqrdazB3M4MFf4vxlna+lKlYJiVTZhA4SJ58XzKCtWILGhggIo
# MIICJAYJKoZIhvcNAQkGMYICFTCCAhECAQEwgY4wdzELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEhMB8GA1UEAxMYTWljcm9zb2Z0IFRpbWUtU3Rh
# bXAgUENBAhMzAAABUeGdot1zk2ziAAAAAAFRMAkGBSsOAwIaBQCgXTAYBgkqhkiG
# 9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA4MDMyMDQ1MTFa
# MCMGCSqGSIb3DQEJBDEWBBQW7/adcZREg/25Q3kblZe/rL31+zANBgkqhkiG9w0B
# AQUFAASCAQCHEWIyeIipO51ZtiZe1wY3e5LDzILl6maVWBM1msXBU1BPxT/sKzLN
# hZms4JXivkSPyLFnipGOjTwnQA7KPJn8v2gmn1tm4m2h740LVHGmABHU3hQvbVHD
# xjM7GXJQjOMC0H2jZh96lWcXCrR75RlaEPXxjZFUiAMxtsPuVlmcK3haPaQoYaNZ
# mVokT+0ywIYSeGyJSGHRMNdXe1o8T79JhLQlT/TiDfpLWQQmK9CNgzAUpxTjadwg
# +Y88JjBI7ubi39aGW6GO/kEcfDKfPy+nWqcOMF6SNBFUWuTkaJqoPR9JNd8LumXP
# e2A0BmXW5Z0FIBNS18y0X7VqJCi0nhW9
# SIG # End signature block
