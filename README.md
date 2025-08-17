# 📊 Disk Space Monitor

![Bash Version](https://img.shields.io/badge/Bash-5.0%2B-blue)
![Platform](https://img.shields.io/badge/Platform-Linux-lightgrey)

the script checks if the disk is full and sends an email notification to the mail if more than 85% of the disk space is occupied

### 1. configure ssmtp
```bash
sudo apt update && sudo apt install -y ssmtp mailutils
```
in /etc/ssmtp/ssmtp.conf add:
```bash
root=xxxxx@gmail.com
mailhub=smtp.gmail.com:587
AuthUser=xxxxx@gmail.com
AuthPass=app_pass  # for gmail set and use APP PASSWORD
UseTLS=YES
UseSTARTTLS=YES
hostname=your_hostname
FromLineOverride=YES
```
### 2. run script
```bash
chmod +x disk_monitor.sh
./disk_monitor.sh
```
