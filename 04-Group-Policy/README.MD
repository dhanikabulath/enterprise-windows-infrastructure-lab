# Project 04 - Enterprise Group Policy Management

## Overview

This project demonstrates the implementation and management of Microsoft Group Policy Objects (GPOs) within an Active Directory domain. Enterprise policies were created to centrally manage security, desktop configuration, user environment, drive mapping, folder redirection, Windows Update settings, and software restriction policies.

The deployment follows enterprise administration best practices by separating policies into dedicated Group Policy Objects linked to the domain.

---

# Objectives

- Configure enterprise password policies
- Create custom Group Policy Objects
- Deploy desktop wallpaper policies
- Restrict USB storage devices
- Configure network drive mapping
- Implement Folder Redirection
- Configure Windows Update policies
- Implement Software Restriction Policies
- Validate policy deployment using GPUpdate and GPResult

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Operating System | Windows Server 2022 Datacenter |
| Domain | corp.novatech.local |
| Domain Controller | DC01 |
| Management Tool | Group Policy Management Console (GPMC) |
| Validation | gpupdate, gpresult |

---

# Group Policy Management

## Group Policy Management Console

The Group Policy Management Console (GPMC) was used to create, configure, and manage enterprise Group Policy Objects.

![Group Policy Management](Screenshots/01_Group_Policy_Management.jpeg)

---

## Default Domain Policy

The Default Domain Policy was used to configure enterprise password policies.

![Default Domain Policy](Screenshots/02_Default_Domain_Policy.jpeg)

---

# Password Policy

The domain password policy was configured with enterprise security settings including:

- Password Complexity
- Minimum Password Length
- Password History
- Password Age

![Password Policy](Screenshots/03_Password_Policy.jpeg)

---

# Desktop Configuration

## Corporate Desktop Policy

A dedicated Group Policy Object was created to manage desktop settings.

![Corporate Desktop Policy](Screenshots/04_Corporate_Desktop_Policy.jpeg)

---

## Desktop Wallpaper Policy

A corporate desktop wallpaper policy was configured and deployed.

![Desktop Wallpaper Policy](Screenshots/05_Desktop_Wallpaper_GPO.jpeg)

---

## Policy Update

Policies were refreshed using GPUpdate.

```cmd
gpupdate /force
```

![GPUpdate Desktop Policy](Screenshots/06_GPUpdate_DesktopPolicy.jpeg)

---

# USB Storage Restriction

USB removable storage devices were restricted using Administrative Templates.

![USB Storage Restriction](Screenshots/07_USB_Storage_Restriction.jpeg)

---

## Policy Update

```cmd
gpupdate /force
```

![GPUpdate USB Policy](Screenshots/08_GPUpdate_USBPolicy.jpeg)

---

# Drive Mapping

A dedicated Group Policy Object was created to automatically map enterprise shared drives.

![Drive Mapping GPO](Screenshots/09_Drive_Mapping_GPO.jpeg)

---

## Drive Map Properties

The mapped network drive configuration was configured using Group Policy Preferences.

![Drive Map Properties](Screenshots/10_Drive_Map_Properties.jpeg)

---

# Folder Redirection

A Folder Redirection policy was configured to centrally store user Documents folders on the file server.

![Folder Redirection GPO](Screenshots/11_Folder_Redirection_GPO.jpeg)

---

## Folder Redirection Settings

The policy redirects each user's Documents folder to a centralized network location.

![Folder Redirection Settings](Screenshots/12_Folder_Redirection_Settings.jpeg)

---

# Windows Update Policy

A dedicated Windows Update Group Policy Object was created.

![Windows Update Policy](Screenshots/13_Windows_Update_GPO.jpeg)

---

## Automatic Updates

Automatic Windows Updates were configured using enterprise policy settings.

![Automatic Updates](Screenshots/14_Automatic_Updates_Settings.jpeg)

---

# Software Restriction Policies

Software Restriction Policies were created to improve endpoint security.

![Software Restriction Policies](Screenshots/15_Software_Restriction_Policies.jpeg)

---

## Default Security Levels

Default Security Levels were configured for Software Restriction Policies.

![Default Security Levels](Screenshots/16_Default_Security_Levels.jpeg)

---

# Policy Validation

## GPUpdate

All configured Group Policies were refreshed using:

```cmd
gpupdate /force
```

![GPUpdate](Screenshots/17_GPUpdate_Final.jpeg)

---

## GPResult

Applied Group Policies were verified using:

```cmd
gpresult /r
```

![GPResult](Screenshots/18_GPResult_Final.jpeg)

---

# Validation

The Group Policy deployment was successfully validated by confirming:

- Password Policy configuration
- Desktop Wallpaper deployment
- USB Storage Restriction
- Drive Mapping configuration
- Folder Redirection
- Windows Update policy configuration
- Software Restriction Policies
- Successful Group Policy refresh
- Successful policy reporting with GPResult

---

# Skills Demonstrated

- Active Directory Group Policy
- Windows Server Administration
- Enterprise Security Configuration
- Password Policy Management
- Desktop Standardization
- Drive Mapping
- Folder Redirection
- Windows Update Management
- Software Restriction Policies
- PowerShell & Command-Line Administration
- Enterprise Infrastructure Management

---

# Lessons Learned

This project demonstrates how Group Policy provides centralized management for Windows enterprise environments. By separating policies into dedicated Group Policy Objects, administrators can simplify management, improve security, and consistently enforce organizational standards across domain-joined computers and users.

---

# Next Project

## Project 05 – Enterprise File Services

The next project focuses on implementing enterprise file services including:

- Shared Folders
- NTFS Permissions
- Share Permissions
- Hidden Shares
- Access-Based Enumeration (ABE)
- Shadow Copies
- File Server Resource Manager (FSRM)
- Disk Quotas
- File Screening
- Storage Reports
<!-- Group Policy project documentation -->
