# Project 06 - PowerShell Automation for Windows Server Administration

## Overview

This project demonstrates the use of PowerShell to automate common Windows Server administration tasks in an Active Directory environment. Automation scripts were developed to provision users, generate Active Directory reports, create home folders, monitor Windows services, review event logs, collect storage information, perform network diagnostics, and inventory system information.

The project highlights how PowerShell can reduce manual administration, improve consistency, and simplify repetitive operational tasks.

---

# Objectives

- Automate Active Directory user provisioning
- Generate Active Directory reports
- Automate home folder creation
- Monitor Windows services
- Review Windows Event Logs
- Collect disk usage information
- Perform network diagnostics
- Generate system inventory reports

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Operating System | Windows Server 2022 Datacenter |
| Domain | corp.novatech.local |
| Server | DC01 |
| Automation Tool | Windows PowerShell 5.1 |
| Module | ActiveDirectory |

---

# Lab 1 – Bulk Active Directory User Creation

User accounts were imported from a CSV file and created automatically using PowerShell.

### Users.csv

![Users CSV](Screenshots/01_Users_CSV.jpeg)

---

### Bulk User Creation Script

![Bulk User Creation Script](Screenshots/02_Bulk_User_Creation_Script.jpeg)

---

### Bulk User Creation Result

![Bulk User Creation Result](Screenshots/03_Bulk_User_Creation_Result.jpeg)

---

# Lab 2 – Active Directory Reporting

PowerShell was used to generate reports for Active Directory users, groups, disabled accounts, and locked accounts.

### AD Report Script

![AD Report Script](Screenshots/04_AD_User_Report_Script.jpeg)

---

### Report Output

![AD Report Output](Screenshots/05_AD_User_Report_Output.jpeg)

---

# Lab 3 – Home Folder Automation

PowerShell automatically created home folders for Active Directory users and applied permissions.

### Home Folder Script

![Home Folder Script](Screenshots/06_Home_Folder_Script.jpeg)

---

### Home Folder Result

![Home Folder Result](Screenshots/07_Home_Folder_Result.jpeg)

---

# Lab 4 – Windows Service Monitoring

PowerShell was used to monitor the status of critical Windows services.

### Service Monitor Script

![Service Monitor Script](Screenshots/08_Service_Monitor_Script.jpeg)

---

### Service Monitor Output

![Service Monitor Output](Screenshots/09_Service_Monitor_Output.jpeg)

---

# Lab 5 – Event Log Monitoring

PowerShell retrieved recent Windows System event logs for administrative review.

### Event Log Script

![Event Log Script](Screenshots/10_Event_Log_Script.jpeg)

---

### Event Log Output

![Event Log Output](Screenshots/11_Event_Log_Output.jpeg)

---

# Lab 6 – Disk Usage Monitoring

Disk information was collected to monitor storage capacity and utilization.

### Disk Usage Script

![Disk Usage Script](Screenshots/12_Disk_Usage_Script.jpeg)

---

### Disk Usage Output

![Disk Usage Output](Screenshots/13_Disk_Usage_Output.jpeg)

---

# Lab 7 – Network Diagnostics

PowerShell cmdlets were used to retrieve IP configuration, test DNS resolution, and verify network connectivity.

### Network Diagnostics Script

![Network Diagnostics Script](Screenshots/14_Network_Diagnostics_Script.jpeg)

---

### Network Diagnostics Output

![Network Diagnostics Output](Screenshots/15_Network_Diagnostics_Output.jpeg)

---

# Lab 8 – System Inventory

PowerShell collected hardware and operating system information for inventory purposes.

### System Inventory Script

![System Inventory Script](Screenshots/16_System_Inventory_Script.jpeg)

---

### System Inventory Output

![System Inventory Output](Screenshots/17_System_Inventory_Output.jpeg)

---

# Skills Demonstrated

- Windows PowerShell
- Active Directory Automation
- CSV Import and Export
- User Provisioning
- Active Directory Reporting
- File System Automation
- Windows Service Monitoring
- Event Log Analysis
- Disk Monitoring
- Network Diagnostics
- System Inventory Collection

---

# Validation Summary

The automation tasks were successfully validated by confirming:

- Bulk user creation from CSV
- Active Directory report generation
- Home folder creation
- Windows service monitoring
- Event log retrieval
- Disk usage reporting
- Network diagnostics
- System inventory collection

---

# Lessons Learned

This project demonstrates how PowerShell can automate repetitive Windows Server administration tasks, improve operational efficiency, and standardize system management. By combining Active Directory cmdlets with reporting and monitoring scripts, routine administrative work can be completed more consistently and with reduced manual effort.

---

# Next Project

## Project 07 – Enterprise Networking & Troubleshooting

The next project focuses on enterprise networking tools and troubleshooting techniques, including TCP/IP configuration, DNS and DHCP troubleshooting, SMB diagnostics, Windows Firewall management, Wireshark packet analysis, and Nmap network scanning.