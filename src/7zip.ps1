
param( 
    [string] $7zippath     # Path to 7zip executable (including exe)
    ,[string] $operation   # Archive or Extract
    ,[string] $source      # Source zip file or source of files to zip
    ,[string] $destination # Destination of extracted files or destination Zip name
    ,[string] $password    # If a password is set here it will use it during archive/extract
   )

# Example variables

$7zippath = "C:\Program Files\7-Zip\7z.exe"
$operation = "extract"
$source = "C:\OpConFiles\OpConWebInstaller.zip"
$destination = "C:\OpConFiles"
$password = "123"
#>

if($operation -eq "archive") #Zips files
{
    $arguments = 'a "' + $destination + '" "' + $source + '" -tzip'
    Write-Ouput "Archiving files from $source to $destination"
}
elseif($operation -eq "extract") #Unzips files
{
    $arguments = 'x "' + $source + '" -o"' + $destination + '"'
    Write-Output "Extracting files from $source to $destination"
}

#Checks if the archive has a password
if($password)
{
    $arguments = $arguments + " -p$password"
}

# Runs 7zip
$go = (Start-Process $7Zippath -ArgumentList $arguments -Wait -PassThru).ExitCode
Write-Output "Exiting with code "$go
Exit $go