# HomeFolders.ps1
# Creates home folders for AD users and assigns Modify permissions to each user.

Import-Module ActiveDirectory

$HomeRoot = "C:\Home"
$SharePath = "\\DC01\Home$"

Get-ADUser -Filter * | ForEach-Object {

    $Username = $_.SamAccountName
    $FolderPath = Join-Path $HomeRoot $Username

    if (!(Test-Path $FolderPath)) {
        New-Item -ItemType Directory -Path $FolderPath
    }

    Set-ADUser $Username `
        -HomeDrive "H:" `
        -HomeDirectory "$SharePath\$Username"

    $Acl = Get-Acl $FolderPath

    $Rule = New-Object System.Security.AccessControl.FileSystemAccessRule(
        "CORP\$Username",
        "Modify",
        "ContainerInherit,ObjectInherit",
        "None",
        "Allow"
    )

    $Acl.AddAccessRule($Rule)
    Set-Acl $FolderPath $Acl
}