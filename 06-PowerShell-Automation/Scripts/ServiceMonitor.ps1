$CriticalServices = @(
    "DNS",
    "DHCPServer",
    "NTDS",
    "LanmanServer"
)

foreach ($Service in $CriticalServices) {

    Get-Service $Service |
    Select Name, Status, StartType
}