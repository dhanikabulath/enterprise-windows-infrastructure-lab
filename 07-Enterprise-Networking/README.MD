# Project 07 - Enterprise Networking & Troubleshooting

## Overview

This project demonstrates the use of Windows networking and PowerShell tools to configure, monitor, and troubleshoot enterprise network connectivity. The exercises focus on TCP/IP configuration, DNS troubleshooting, connectivity testing, network adapter configuration, Windows Firewall management, SMB diagnostics, and Windows Event Log analysis.

PowerShell and built-in Windows networking utilities were used throughout the project to validate network configuration and troubleshoot common enterprise networking scenarios.

---

# Objectives

- Verify TCP/IP configuration
- Troubleshoot DNS resolution
- Test network connectivity
- Examine network adapters and routing tables
- Review Windows Firewall configuration
- Monitor active TCP connections
- Validate SMB services
- Analyze Windows Event Logs

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Operating System | Windows Server 2022 Datacenter |
| Domain | corp.novatech.local |
| Server | DC01 |
| Management Tools | Windows PowerShell, Command Prompt |
| Validation | Windows Networking Utilities |

---

# Lab 1 – TCP/IP Configuration

TCP/IP configuration was verified using Windows networking commands and PowerShell.

### IP Configuration

![IPConfig](Screenshots/01_IPConfig_All.jpeg)

---

### Get-NetIPAddress

![Get-NetIPAddress](Screenshots/02_Get_NetIPAddress.jpeg)

---

### Get-NetIPConfiguration

![Get-NetIPConfiguration](Screenshots/03_Get_NetIPConfiguration.jpeg)

---

# Lab 2 – DNS Troubleshooting

DNS resolution and local DNS cache management were validated.

### Resolve-DnsName

![Resolve-DnsName](Screenshots/04_Resolve_DnsName.jpeg)

---

### NSLookup

![NSLookup](Screenshots/05_NSLookup.jpeg)

---

### Display DNS Cache

![Display DNS Cache](Screenshots/06_Display_DNS_Cache.jpeg)

---

### Flush DNS Cache

![Flush DNS Cache](Screenshots/07_Flush_DNS.jpeg)

---

# Lab 3 – Network Connectivity

Network connectivity was tested using standard Windows networking utilities.

### Ping

![Ping](Screenshots/08_Ping_Google.jpeg)

---

### Trace Route

![Tracert](Screenshots/09_Tracert_Google.jpeg)

---

### Test-NetConnection

![Test-NetConnection](Screenshots/10_Test_NetConnection.jpeg)

---

# Lab 4 – Network Configuration

PowerShell was used to review network adapters and routing information.

### Network Adapters

![Network Adapters](Screenshots/11_Get_NetAdapter.jpeg)

---

### Routing Table

![Routing Table](Screenshots/12_Get_NetRoute.jpeg)

---

# Lab 5 – Windows Firewall

Windows Defender Firewall profiles and rules were reviewed.

### Firewall Profiles

![Firewall Profiles](Screenshots/13_Firewall_Profile.jpeg)

---

### Firewall Rules

![Firewall Rules](Screenshots/14_Firewall_Rules.jpeg)

---

# Lab 6 – Active Network Connections

Current TCP connections and listening ports were examined.

### Netstat

![Netstat](Screenshots/15_Netstat.jpeg)

---

### TCP Connections

![TCP Connections](Screenshots/16_TCP_Connections.jpeg)

---

# Lab 7 – SMB Diagnostics

PowerShell was used to verify SMB configuration and active sessions.

### SMB Shares

```powershell
Get-SmbShare
```

![SMB Shares](Screenshots/17_Get_SmbShare.jpeg)

---

### SMB Sessions

```powershell
Get-SmbSession
```

No active SMB sessions were present during testing.

![SMB Sessions](Screenshots/18_Get_SmbSession_No_Active_Sessions.jpeg)

---

### Open SMB Files

```powershell
Get-SmbOpenFile
```

No SMB files were open during testing.

![Open SMB Files](Screenshots/19_Get_SmbOpenFile_No_Open_Files.jpeg)

---

# Lab 8 – Windows Event Log Analysis

Windows System Event Logs were reviewed using PowerShell.

### Event Log Script

```powershell
Get-WinEvent -LogName System -MaxEvents 20
```

![Event Log Script](Screenshots/20_System_Event_Log_Script.jpeg)

---

### Event Log Output

![Event Log Output](Screenshots/21_System_Event_Log_Output.jpeg)

---

# Validation Summary

The networking environment was successfully validated by confirming:

- TCP/IP configuration
- IP addressing
- DNS resolution
- DNS cache management
- Network connectivity
- Route table configuration
- Network adapter status
- Windows Firewall configuration
- Active TCP connections
- SMB share configuration
- Windows Event Log retrieval

---

# Skills Demonstrated

- Windows Networking
- TCP/IP Troubleshooting
- DNS Administration
- PowerShell Networking Cmdlets
- Windows Firewall Administration
- SMB Diagnostics
- Route Analysis
- Network Connectivity Testing
- Windows Event Log Analysis
- Enterprise Network Troubleshooting

---

# Lessons Learned

This project provided hands-on experience using Windows networking tools and PowerShell to troubleshoot enterprise network services. The exercises demonstrated practical methods for validating TCP/IP configuration, resolving DNS issues, testing connectivity, examining firewall settings, inspecting SMB services, and reviewing Windows Event Logs. These skills are essential for diagnosing and resolving common infrastructure issues in enterprise environments.

---

# Next Project

## Project 08 – Microsoft Entra ID & Microsoft 365 Administration

The next project focuses on Microsoft Entra ID and Microsoft 365 administration, including user and group management, Microsoft 365 licensing, Exchange Online administration, Microsoft Teams management, Multi-Factor Authentication (MFA), Conditional Access, and identity management within cloud environments.