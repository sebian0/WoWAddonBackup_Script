## This oughta copy your stuff over babes
$Folder = "C:\AddonBackup\ClassicAddons\AddOns"
$FolderB = "C:\AddonBackup\ClassicAddons\WTF"
$classicAddonPath = "C:\Program Files (x86)\World of Warcraft\_classic_\Interface\AddOns"
$wtfPath = "C:\Program Files (x86)\World of Warcraft\_classic_\WTF"


if (Test-Path -Path $Folder) {
    "Directory exists..removing directory"
    try {
        Remove-Item -LiteralPath $Folder -Force -Recurse
    } catch { "Trouble removing directory. Oopsie?" }
    finally {
        New-Item -Path $Folder -ItemType Directory
        "Directory created..copying files..."
        Copy-Item -Path $classicAddonPath -Destination $Folder -Force -Recurse -Confirm:$false
    }
} else {
    "Directory does not exist, proceeding with backup.."
    New-Item -Path $Folder -ItemType Directory
    Copy-Item -Path $classicAddonPath -Destination $Folder -Force -Recurse -Confirm:$false
}

Write-Verbose "Checking WTF Folder Existence..."

if (Test-Path -Path $FolderB) {
    "WTF Folder exists..removing directory"
    try {     Remove-Item -LiteralPath $FolderB -Force -Recurse
        } catch { "Trouble removing directory. Oopsie?" }
        finally {
            "Directory no longer exists. Continuing WTF backup. OMGWTFBBQDAIRYQUEEN"
            New-Item -Path $FolderB -ItemType Directory
            Copy-Item -Path $wtfPath -Destination $FolderB -Force -Recurse -Confirm:$false
        }
} else {
    "WTF Directory does not exist. Proceeding with backup..."
    New-Item -Path $FolderB -ItemType Directory
    Copy-Item -Path $wtfPath -Destination $FolderB -Force -Recurse -Confirm:$false
}