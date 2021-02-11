param(
    [Parameter(Mandatory)]
    [string]$SolutionFolderPath,
    [Parameter(Mandatory)]
    [string]$VersionNumber
)

$solutionXmlPath = "$SolutionFolderPath/Other/solution.xml"

$xml = New-Object xml
$xml.Load($solutionXmlPath)

$versionNode = $xml.SelectSingleNode("ImportExportXml/SolutionManifest/Version")
$versionNode.InnerText = $VersionNumber

$xml.Save($solutionXmlPath)