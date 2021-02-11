param(
    $Connection,
    [Parameter(Mandatory=$true, ParameterSetName = "Folder")]
    [string]$SourceFolderPath,
    [Parameter(Mandatory=$true, ParameterSetName = "File")]
    [string]$SolutionZipFilePath,
    [string]$MapFilePath,
    [switch]$Managed
)

. $PSScriptRoot\..\environment-setup\Add-ModulesPath.ps1

if($Connection -eq $null)
{
    $Connection = (. $PSScriptRoot\..\cds\Get-CrmConnection.ps1)
}

if($SolutionFilePath -eq $null) {
    $SolutionZipFilePath = "$PSScriptRoot\..\temp\solution.zip"

    & $PSScriptRoot\Compress-Solution.ps1 `
        -SourceFolderPath $SourceFolderPath `
        -SolutionZipFilePath $SolutionZipFilePath `
        -PackageType $(if($Managed) { "Managed" } else { "Unmanaged" }) `
        -MapFilePath $MapFilePath
}

Import-CrmSolution `
    -conn $Connection `
    -SolutionFilePath $SolutionZipFilePath `
    -ActivatePlugIns `
    -AsyncOperationImportMethod

if(-not $Managed) {
    Publish-CrmAllCustomization `
        -conn $Connection
}
