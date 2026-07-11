Import-Module ActiveDirectory

$ReportPath = "C:\PowerShell-Automation\Reports"

if (!(Test-Path $ReportPath)) {
    New-Item -ItemType Directory -Path $ReportPath
}

Get-ADUser -Filter * -Properties Enabled,Department,LastLogonDate,PasswordLastSet |
Select-Object Name,SamAccountName,Department,Enabled,LastLogonDate,PasswordLastSet |
Export-Csv "$ReportPath\AD_User_Report.csv" -NoTypeInformation

Get-ADGroup -Filter * |
Select-Object Name,GroupScope,GroupCategory |
Export-Csv "$ReportPath\AD_Group_Report.csv" -NoTypeInformation

Search-ADAccount -AccountDisabled |
Select-Object Name,SamAccountName,ObjectClass |
Export-Csv "$ReportPath\Disabled_Accounts.csv" -NoTypeInformation

Search-ADAccount -LockedOut |
Select-Object Name,SamAccountName,ObjectClass |
Export-Csv "$ReportPath\Locked_Accounts.csv" -NoTypeInformation

Write-Host "Reports generated in $ReportPath"