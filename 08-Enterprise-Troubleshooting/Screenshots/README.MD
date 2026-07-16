# Project 08 - Enterprise Windows Server Troubleshooting

## Overview

This project demonstrates common troubleshooting techniques used in Windows Server enterprise environments. PowerShell and native Windows administration tools were used to investigate DHCP services, Active Directory services, event logs, security logs, disk health, running processes, and installed Windows updates.

The project focuses on systematic diagnostics and validation rather than intentionally disrupting production services.

---

# Objectives

- Verify DHCP service health
- Review DHCP scopes and leases
- Analyze DHCP statistics
- Validate Active Directory services
- Investigate Windows System events
- Review Security event logs
- Monitor disk health
- Identify resource-intensive processes
- Verify installed Windows updates

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Operating System | Windows Server 2022 Datacenter |
| Domain | corp.novatech.local |
| Server | DC01 |
| Management Tools | Windows PowerShell, Event Viewer |
| Validation | Windows Server Diagnostic Tools |

---

# Lab 1 – DHCP Troubleshooting

The DHCP Server service was verified to ensure it was operational.

### DHCP Service Status

```powershell
Get-Service DHCPServer
```

![DHCP Service](Screenshots/05_DHCP_Service_Status.jpeg)

---

### DHCP Scopes

```powershell
Get-DhcpServerv4Scope
```

![DHCP Scopes](Screenshots/06_DHCP_Scopes.jpeg)

---

### DHCP Leases

```powershell
Get-DhcpServerv4Lease -ScopeId 192.168.10.0
```

![DHCP Leases](Screenshots/07_DHCP_Leases.jpeg)

---

### DHCP Statistics

```powershell
Get-DhcpServerv4Statistics
```

![DHCP Statistics](Screenshots/08_DHCP_Statistics.jpeg)

---

# Lab 2 – Active Directory Service Validation

Critical Active Directory services were verified.

```powershell
Get-Service NTDS,DNS,DHCPServer,Netlogon
```

![AD Services](Screenshots/09_AD_Services.jpeg)

---

# Lab 3 – Windows Event Log Investigation

System event logs were reviewed to identify recent errors.

```powershell
Get-WinEvent -LogName System -MaxEvents 50 |
Where-Object {$_.LevelDisplayName -eq "Error"} |
Select TimeCreated,Id,ProviderName,Message
```

![System Event Log](Screenshots/10_System_Error_Events.jpeg)

---

# Lab 4 – Security Log Investigation

Recent security events were reviewed.

```powershell
Get-WinEvent -LogName Security -MaxEvents 20
```

![Security Log](Screenshots/11_Security_Event_Log.jpeg)

---

# Lab 5 – Disk Health

Storage volumes and available capacity were reviewed.

```powershell
Get-Volume
```

![Disk Health](Screenshots/12_Disk_Health.jpeg)

---

# Lab 6 – Process Monitoring

Running processes were sorted by CPU utilization.

```powershell
Get-Process |
Sort-Object CPU -Descending |
Select-Object -First 20
```

![Running Processes](Screenshots/13_Top_Processes.jpeg)

---

# Lab 7 – Windows Update Validation

Installed Windows updates were reviewed.

```powershell
Get-HotFix
```

![Installed Updates](Screenshots/14_Installed_Updates.jpeg)

---

# Validation Summary

The Windows Server environment was successfully validated by confirming:

- DHCP Server health
- DHCP scope configuration
- Active DHCP leases
- DHCP operational statistics
- Active Directory service status
- Windows System event logs
- Security event logs
- Disk health
- Running processes
- Installed Windows updates

---

# Skills Demonstrated

- Windows Server Troubleshooting
- DHCP Administration
- Active Directory Diagnostics
- Windows Event Log Analysis
- Security Log Investigation
- Disk Health Monitoring
- Process Monitoring
- Windows Update Management
- PowerShell Administration
- Enterprise Infrastructure Diagnostics

---

# Lessons Learned

This project demonstrates a structured approach to Windows Server troubleshooting using PowerShell and native administrative tools. Rather than relying solely on graphical interfaces, PowerShell was used to validate server health, investigate infrastructure services, analyze event logs, and diagnose common operational issues. These skills are fundamental for enterprise systems administration and security operations.

---

# Next Project

## Project 09 – Windows Server Security Hardening

The next project focuses on strengthening the security posture of Windows Server through security baselines, audit policies, Windows Defender configuration, firewall hardening, secure remote administration, SMB security, PowerShell logging, and account security policies.