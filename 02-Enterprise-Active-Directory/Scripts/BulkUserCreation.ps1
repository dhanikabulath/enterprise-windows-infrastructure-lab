# BulkUserCreation.ps1
# Creates AD users from a CSV file and adds them to department security groups.

Import-Module ActiveDirectory

$CsvPath = "C:\Scripts\Users.csv"
$DefaultPassword = "P@ssw0rd123!"

Import-Csv $CsvPath | ForEach-Object {

    $OU = "OU=$($_.Department),OU=User,DC=corp,DC=novatech,DC=local"
    $SecurePassword = ConvertTo-SecureString $DefaultPassword -AsPlainText -Force

    New-ADUser `
        -Name "$($_.FirstName) $($_.LastName)" `
        -GivenName $_.FirstName `
        -Surname $_.LastName `
        -SamAccountName $_.Username `
        -UserPrincipalName "$($_.Username)@corp.novatech.local" `
        -Path $OU `
        -Enabled $true `
        -AccountPassword $SecurePassword `
        -ChangePasswordAtLogon $true

    Add-ADGroupMember "GG_$($_.Department.ToUpper())" $_.Username
}