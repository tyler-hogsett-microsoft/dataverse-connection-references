param(
    $Connection,
    [Parameter(Mandatory=$true)]
    [string]$SourceFolderPath,
    [string]$MapFilePath,
    [switch]$Managed
)

. $PSScriptRoot\..\environment-setup\Add-ModulesPath.ps1

if($Connection -eq $null)
{
    $Connection = (. $PSScriptRoot\..\cds\Get-CrmConnection.ps1)
}

$solutionFilePath = "$PSScriptRoot\..\temp\solution.zip"

& $PSScriptRoot\Compress-Solution.ps1 `
    -SourceFolderPath $SourceFolderPath `
    -SolutionZipFilePath $solutionFilePath `
    -PackageType $(if($Managed) { "Managed" } else { "Unmanaged" }) `
    -MapFilePath $MapFilePath

Import-CrmSolution `
    -conn $Connection `
    -SolutionFilePath $solutionFilePath `
    -ActivatePlugIns `
    -AsyncOperationImportMethod

if(-not $Managed) {
    Publish-CrmAllCustomization `
        -conn $Connection
}
