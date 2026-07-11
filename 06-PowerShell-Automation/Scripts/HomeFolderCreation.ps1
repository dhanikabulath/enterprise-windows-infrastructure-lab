Import-Module ActiveDirectory

$RootFolder = "D:\HomeFolders"

if (!(Test-Path $RootFolder)) {
    New-Item -ItemType Directory -Path $RootFolder | Out-Null
}

Get-ADUser -Filter * | ForEach-Object {

    $UserFolder = Join-Path $RootFolder $_.SamAccountName

    if (!(Test-Path $UserFolder)) {

        New-Item -ItemType Directory -Path $UserFolder | Out-Null

        $Acl = Get-Acl $UserFolder

        $Rule = New-Object System.Security.AccessControl.FileSystemAccessRule(
            $_.SamAccountName,
            "Modify",
            "ContainerInherit,ObjectInherit",
            "None",
            "Allow"
        )

        $Acl.SetAccessRule($Rule)
        Set-Acl $UserFolder $Acl

        Write-Host "Created home folder for $($_.SamAccountName)"
    }
}