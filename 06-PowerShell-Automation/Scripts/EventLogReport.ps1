Get-WinEvent -LogName System -MaxEvents 20 |
Select TimeCreated, Id, LevelDisplayName, ProviderName, Message |
Format-Table -AutoSize