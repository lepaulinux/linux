# GVM Installation Script (install_gvm.sh)
## 📌 Overview

This repository contains a simple Bash script to automate the installation and initial setup of **GVM (Greenbone Vulnerability Management)** on Debian-based systems (e.g., Ubuntu).

The script performs system updates, installs GVM, runs the initial configuration, verifies the setup, and starts the required services.
---
## ⚙️ What the Script Does
The `install_gvm.sh` script executes the following steps:

1. **Updates package lists**
   * Runs `apt update` to refresh repositories

2. **Upgrades installed packages**
   * Runs `apt upgrade -y` to ensure the system is up to date

3. **Displays OS version**
   * Outputs the system version using `/etc/os-release`

4. **Installs GVM**
   * Installs the `gvm` package via APT

5. **Runs GVM setup**
   * Executes `gvm-setup` to initialize feeds, users, and services

6. **Checks installation**
   * Runs `gvm-check-setup` to validate everything is correctly configured

7. **Starts GVM services**
   * Executes `gvm-start` to launch the web interface and backend services
---
## 🚀 How to Use

### 1. Clone the repository
```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```
### 2. Make the script executable
```bash
chmod +x install_gvm.sh
```
### 3. Run the script
```bash
./install_gvm.sh
```
---
## 🌐 Accessing GVM
After installation completes, access the web interface in your browser:
```
https://127.0.0.1:9392
```
> ⚠️ Note: The setup process may take a long time due to feed downloads.
---
## 📝 Requirements
* Debian-based Linux distribution (Ubuntu recommended)
* Kali-Linux
* Internet connection
* Sudo privileges
---
## ⚠️ Important Notes
* The script uses `sudo` for privileged operations.
* The `gvm-setup` step can take significant time depending on network speed.
* If `gvm-check-setup` reports issues, follow its suggestions to fix them.
---
## 📄 License
This project is open-source and free to use.
---
## 🙌 Contributions
Feel free to fork, improve, and submit pull requests.

