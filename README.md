# Bash Automation Scripts

A collection of Bash scripts for automating common Linux sysadmin tasks.

---

## Script 1: System Health Check

### Overview
Automated system health check script that captures CPU, memory, and disk usage and appends results to a timestamped log file.

### Usage
```bash
chmod +x system_health.sh
./system_health.sh
```

### What It Checks
- CPU usage via top
- Memory usage via free -h
- Disk usage via df -h

### Output
Appends results to health_log.txt with a timestamp on each run.

### Skills Demonstrated
- Bash scripting fundamentals
- System monitoring commands
- Log file management
- File permissions with chmod



## log-rotator.sh
Compresses log files older than 7 days into timestamped .tar.gz archives.
Deletes archives older than 30 days. Designed to run via cron for automated log management.


## etc-backup.sh
Backs up /etc into a timestamped .tar.gz archive nightly via cron. Automatically keeps only the last 7 backups, deleting older ones. Runs as root since /etc requires elevated permissions.


## system-info-report.sh
Full system snapshot: date/time, hostname, CPU load, memory & disk usage, top 5 processes by CPU, kernel/CPU info (uname/lscpu), logged-in users, and last 5 system log lines.
