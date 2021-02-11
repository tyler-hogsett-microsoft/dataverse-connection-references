param(
    [Parameter(Mandatory=$true)]
    [string]$Action,
    [Parameter(Mandatory=$true)]
    [string]$ZipFile,
    [Parameter(Mandatory=$true)]
    [string]$PackageType,
    [Parameter(Mandatory=$true)]
    [string]$Folder,
    [string]$Map
)

Set-Alias SolutionPackager $PSScriptRoot\..\nuget-tools\CoreTools\SolutionPackager.exe

$parameters = @(
    "/action:$Action",
    "/zipfile:$ZipFile",
    "/packagetype:$PackageType",
    "/folder:$Folder",
    "/useUnmanagedFileForMissingManaged"
)

if($Map -ne $null) {
    $parameters += "/map:$Map"
}

SolutionPackager @parameters
    # /action:$Action `
    # /zipfile:$ZipFile `
    # /packagetype:$PackageType `
    # /folder:$Folder `
    # /useUnmanagedFileForMissingManaged `
