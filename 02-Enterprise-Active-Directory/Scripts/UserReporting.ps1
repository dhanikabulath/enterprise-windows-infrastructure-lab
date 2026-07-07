# UserReporting.ps1
# Generates basic Active Directory user and group reports.

Import-Module ActiveDirectory

$ReportPath = "C:\Scripts\Reports"

if (!(Test-Path $ReportPath)) {
    New-Item -ItemType Directory -Path $ReportPath
}

Get-ADUser -Filter * -Properties Enabled,LastLogonDate,PasswordLastSet |
Select-Object Name,SamAccountName,Enabled,LastLogonDate,PasswordLastSet |
Export-Csv "$ReportPath\AllUsers.csv" -NoTypeInformation

Search-ADAccount -AccountDisabled |
Select-Object Name,SamAccountName,ObjectClass |
Export-Csv "$ReportPath\DisabledAccounts.csv" -NoTypeInformation

Search-ADAccount -LockedOut |
Select-Object Name,SamAccountName,ObjectClass |
Export-Csv "$ReportPath\LockedOutAccounts.csv" -NoTypeInformation

Get-ADGroup -Filter * |
Select-Object Name,GroupScope,GroupCategory |
Export-Csv "$ReportPath\Groups.csv" -NoTypeInformation