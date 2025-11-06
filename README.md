# 🧰 Bash Scripting Suite for System Maintenance

## 📖 Overview
This project is a **Linux-based Bash scripting suite** that automates common system maintenance tasks such as:
- Backing up important files and folders  
- Performing system updates and cleanup  
- Monitoring logs for errors and warnings  

The suite also includes a **menu-driven interface** to run all scripts from one place, making system maintenance simple and efficient.

---

## 🗂️ Project Structure

bash-maintenance-suite/
├── backup.sh # Automates file and folder backups
├── update_cleanup.sh # Updates the system and removes unused packages
├── log_monitor.sh # Checks logs for errors and warnings
├── maintenance_suite.sh # Menu-driven interface for all scripts
└── README.md # Project documentation

---

## ⚙️ How to Run the Project

1. **Open terminal** and navigate to the your project folder:
   ```bash
   cd ~/bash-maintenance-suite

2. Make all scripts executable:
```bash
chmod +x *.sh 

3. Run the maintenance suite:
```bash
./maintenance_suite.sh

4. Choose from the menu:
```markdown
1. Backup Files
2. System Update & Cleanup
3. Log Monitor
4. Exit

🧩 Script Descriptions
Script	Purpose
backup.sh	Creates a backup of the Documents directory into a timestamped folder in your home directory.
update_cleanup.sh	Updates all installed packages, removes unused dependencies, and cleans up the system cache.
log_monitor.sh	Scans the system log (/var/log/syslog) for any “error”, “fail”, or “warning” entries and saves them in a report file.
maintenance_suite.sh	Combines all scripts into one interactive menu-driven interface.

.
🧑‍💻 Learning Outcomes

Linux shell scripting and automation

File handling, logging, and permissions

Using system utilities (grep, cp, apt, etc.)

Creating menu-driven interfaces in Bash

Version control using Git and GitHub

📸 Example Output
==============================
🧰 SYSTEM MAINTENANCE SUITE
==============================
1. Backup Files
2. System Update & Cleanup
3. Log Monitor
4. Exit
Choose an option [1-4]:


🧾 Author

Meghna Pradhan
Institute of Technical Education and Research, SOA University

📅 Capstone Project — Linux OS & LSP Module

🏁 Conclusion

This Bash scripting suite simplifies routine system maintenance tasks by providing automation, error detection, and an easy-to-use menu interface.
It demonstrates the power of shell scripting for improving efficiency and reliability in Linux-based systems.
