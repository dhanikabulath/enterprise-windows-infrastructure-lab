# Project 03 - Enterprise DNS & DHCP

## Overview

This project builds upon the Active Directory environment by implementing Microsoft DNS and DHCP services on Windows Server 2022. DHCP provides automatic IP address allocation to network clients, while DNS provides reliable hostname resolution throughout the Active Directory domain.

Both services were configured, validated using PowerShell, and tested to simulate a production Windows Server environment.

---

# Objectives

- Install the DHCP Server role
- Authorize the DHCP Server
- Create and configure a DHCP Scope
- Configure DHCP Scope Options
- Validate DHCP using PowerShell
- Manage DNS using DNS Manager
- Verify Forward and Reverse Lookup Zones
- Validate DNS name resolution
- Test network connectivity

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Operating System | Windows Server 2022 Datacenter |
| Server Name | DC01 |
| Domain | corp.novatech.local |
| DNS | Active Directory Integrated |
| DHCP | Windows Server DHCP |
| Management Tools | DNS Manager, DHCP Manager |
| Validation Tools | PowerShell, Resolve-DnsName, NSLookup, Ping |

---

# DHCP Configuration

## DHCP Server Installation

The DHCP Server role was installed and authorized within Active Directory.

![DHCP Server Role Installed](Screenshots/DHCP/01_DHCP_Server_Role_Installed.jpeg)

---

## DHCP Manager

The DHCP management console was used to configure and manage DHCP services.

![DHCP Manager](Screenshots/DHCP/02_DHCP_Manager.jpeg)

---

## DHCP Scope

A DHCP Scope was created to automatically assign IPv4 addresses to client devices.

![DHCP Scope](Screenshots/DHCP/03_DHCP_Scope.jpeg)

---

## DHCP Scope Options

The following Scope Options were configured:

- Default Gateway
- DNS Server
- DNS Domain Name

![DHCP Scope Options](Screenshots/DHCP/06_DHCP_Scope_Options.jpeg)

---

# DHCP Validation

## Verify DHCP Scope

```powershell
Get-DhcpServerv4Scope
```

![DHCP Scope PowerShell](Screenshots/DHCP/07_Get_DhcpServerv4Scope_PowerShell.jpeg)

---

## DHCP Scope Statistics

```powershell
Get-DhcpServerv4ScopeStatistics
```

![DHCP Scope Statistics](Screenshots/DHCP/08_DHCP_Scope_Statistics.jpeg)

---

## DHCP Option Values

```powershell
Get-DhcpServerv4OptionValue -ScopeId 192.168.10.0
```

![DHCP Option Values](Screenshots/DHCP/09_DHCP_Option_Values.jpeg)

---

## DHCP Scope Validation

```powershell
Get-DhcpServerv4ScopeStatistics
```

![DHCP Scope Statistics](Screenshots/DHCP/10_DHCP_Scope_Statistics.jpeg)

---

# DNS Configuration

## DNS Manager

DNS Manager was used to administer DNS zones and records.

![DNS Manager](Screenshots/DNS/11_DNS_Manager.jpeg)

---

## Forward Lookup Zone

The Active Directory integrated Forward Lookup Zone stores host records for the domain.

![Forward Lookup Zone](Screenshots/DNS/12_Forward_Lookup_Zone.jpeg)

---

## Reverse Lookup Zone

A Reverse Lookup Zone was configured to enable reverse DNS lookups from IP addresses to hostnames.

![Reverse Lookup Zone](Screenshots/DNS/13_Reverse_Lookup_Zone.jpeg)

---

## A Record

The Domain Controller A Record was verified within the Forward Lookup Zone.

![A Record](Screenshots/DNS/14_A_Record_DC01.jpeg)

---

# DNS Validation

## Resolve-DnsName

```powershell
Resolve-DnsName dc01.corp.novatech.local
```

![Resolve-DnsName](Screenshots/DNS/15_Resolve_DnsName.jpeg)

---

## NSLookup

```cmd
nslookup dc01.corp.novatech.local
```

![NSLookup](Screenshots/DNS/16_NSLookup_DC01.jpeg)

---

## Ping Name Resolution

```cmd
ping dc01
```

![Ping Name Resolution](Screenshots/DNS/17_Ping_Name_Resolution.jpeg)

---

# Validation

The deployment was successfully validated by confirming:

- DHCP Server installation
- DHCP authorization
- DHCP Scope creation
- DHCP Scope Options configuration
- DHCP PowerShell validation
- Active Directory integrated DNS
- Forward Lookup Zone
- Reverse Lookup Zone
- Domain Controller A Record
- Successful DNS name resolution
- Successful network connectivity

---

# Skills Demonstrated

- Windows Server Administration
- DHCP Server Administration
- DNS Server Administration
- Active Directory Integration
- IPv4 Address Management
- Enterprise Name Resolution
- PowerShell Administration
- Network Troubleshooting
- Infrastructure Documentation

---

# Lessons Learned

This project provided hands-on experience implementing enterprise DHCP and DNS services within an Active Directory environment. The deployment demonstrated how centralized IP address management and DNS name resolution support reliable communication across enterprise networks while PowerShell was used to validate and troubleshoot the configuration.

---

# Next Project

## Project 04 – Group Policy Management

The next project focuses on implementing enterprise Group Policy Objects (GPOs), including password policies, desktop standardization, drive mapping, USB storage control, folder redirection, Windows Update management, and software restriction policies.