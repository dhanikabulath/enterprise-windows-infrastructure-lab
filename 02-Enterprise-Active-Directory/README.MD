# Project 02 - Enterprise Active Directory

## Overview

This project builds upon the Azure infrastructure created in Project 01 by deploying an Enterprise Active Directory environment using Windows Server 2022. The server was promoted to a Domain Controller, providing centralized identity and access management for users, Organizational Units (OUs), and administrative resources within the lab environment.

PowerShell automation was also introduced to simplify common administrative tasks such as bulk user creation, home folder configuration, and Active Directory reporting.

---

# Objectives

- Install Active Directory Domain Services (AD DS)
- Promote Windows Server 2022 to a Domain Controller
- Configure an Active Directory domain
- Create Organizational Units (OUs)
- Create enterprise user accounts
- Automate administration using PowerShell
- Configure user home folders
- Generate Active Directory reports

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Operating System | Windows Server 2022 Datacenter |
| Server Name | DC01 |
| Server Role | Domain Controller |
| Services | Active Directory Domain Services |
| Management Console | Active Directory Users and Computers |
| Automation | Windows PowerShell |

---

# Architecture

Windows Server 2022 was promoted to a Domain Controller and configured as the central identity management server for the enterprise lab environment. Organizational Units were created to organize users, while PowerShell automation simplified repetitive administrative tasks.

---

# Implementation

## 1. Active Directory Domain Services Installation

The Active Directory Domain Services (AD DS) role was successfully installed using Server Manager.

![AD DS Installed](Screenshots/02_AD_DS_Installed.jpeg)

---

## 2. Domain Controller Promotion

The Windows Server was promoted to a Domain Controller by creating a new Active Directory forest and domain.

![Promote to Domain Controller](Screenshots/03_Promote_to_Domain_Controller.jpeg)

---

## 3. AD DS Management

After promotion, Server Manager confirmed that Active Directory Domain Services had been successfully installed.

![Server Manager AD DS](Screenshots/04_Server_Manager_AD_DS.jpeg)

---

## 4. Active Directory Users and Computers

The Active Directory Users and Computers (ADUC) console was used to manage users and Organizational Units.

![Active Directory Users and Computers](Screenshots/05_Active_Directory_Users_and_Computers.jpeg)

---

## 5. Organizational Units

Organizational Units (OUs) were created to logically separate administrative objects and simplify management.

![Organizational Units](Screenshots/06_Organizational_Units.jpeg)

---

## 6. User Accounts

Enterprise user accounts were created and organized within the appropriate Organizational Units.

![User Accounts](Screenshots/07_User_Accounts.jpeg)

---

# PowerShell Administration

PowerShell was used to verify Active Directory objects and automate common administrative tasks.

## Active Directory Users

The following command was used to retrieve Active Directory users.

```powershell
Get-ADUser -Filter *
```

![AD Users PowerShell](Screenshots/07_AD_Users_PowerShell.jpeg)

---

## Active Directory Groups

The following command was used to list Active Directory groups.

```powershell
Get-ADGroup -Filter *
```

![AD Groups PowerShell](Screenshots/08_AD_Groups_PowerShell.jpeg)

---

## Organizational Units

The following command displayed all Organizational Units within the domain.

```powershell
Get-ADOrganizationalUnit -Filter *
```

![AD OUs PowerShell](Screenshots/09_AD_OUs_PowerShell.jpeg)

---

# PowerShell Automation

## Bulk User Creation

A PowerShell script was developed to automatically create Active Directory users from a CSV file.

**Script**

```
Scripts/BulkUserCreation.ps1
```

Script Preview

![BulkUserCreation Script](Screenshots/10_BulkUserCreation_ps1.jpeg)

Execution

![Bulk User Creation PowerShell](Screenshots/10_Bulk_User_Creation_PowerShell.jpeg)

---

## Home Folder Configuration

PowerShell was used to automatically configure user home folders and assign permissions.

**Script**

```
Scripts/HomeFolders.ps1
```

Script Preview

![HomeFolders Script](Screenshots/11_HomeFolders_ps1.jpeg)

Execution

![Home Folder Configuration](Screenshots/11_Home_Folder_Configuration_PowerShell.jpeg)

---

## Active Directory Reporting

PowerShell was used to generate reports for Active Directory users and groups.

**Script**

```
Scripts/UserReporting.ps1
```

Script Preview

![UserReporting Script](Screenshots/12_UserReporting_ps1.jpeg)

Execution

![AD User Reporting](Screenshots/12_AD_User_Reporting_PowerShell.jpeg)

---

# Validation

The implementation was successfully validated by confirming:

- Active Directory Domain Services installation
- Domain Controller promotion
- Active Directory Users and Computers management console
- Organizational Unit creation
- Enterprise user creation
- PowerShell Active Directory queries
- Bulk user automation
- Home folder configuration
- Active Directory reporting

---

# Skills Demonstrated

- Windows Server Administration
- Active Directory Domain Services
- Domain Controller Deployment
- Organizational Unit Management
- User Administration
- PowerShell Automation
- Windows Scripting
- Active Directory Reporting
- Enterprise Documentation

---

# Scripts Included

| Script | Description |
|---------|-------------|
| BulkUserCreation.ps1 | Creates Active Directory users from a CSV file |
| HomeFolders.ps1 | Configures user home folders |
| UserReporting.ps1 | Generates Active Directory reports |

---

# Lessons Learned

This project provided hands-on experience deploying and administering an Enterprise Active Directory environment using Windows Server 2022. By combining graphical administration tools with PowerShell automation, repetitive administrative tasks were simplified while improving consistency, efficiency, and scalability.

---

# Next Project

## Project 03 – DNS & DHCP

The next phase of the lab will focus on implementing enterprise DNS and DHCP services, including Forward and Reverse Lookup Zones, DHCP Scopes, Reservations, Leases, and network troubleshooting.
<!-- Active Directory project documentation -->
