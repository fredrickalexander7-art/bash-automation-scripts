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
