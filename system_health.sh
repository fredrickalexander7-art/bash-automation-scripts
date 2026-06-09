#!/bin/bash

LOGFILE=~/bash-automation-scripts/health_log.txt
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "============================" >> $LOGFILE
echo "System Health Check — $TIMESTAMP" >> $LOGFILE
echo "============================" >> $LOGFILE

echo "" >> $LOGFILE
echo "-- CPU Usage --" >> $LOGFILE
top -bn1 | grep "Cpu(s)" >> $LOGFILE

echo "" >> $LOGFILE
echo "-- Memory Usage --" >> $LOGFILE
free -h >> $LOGFILE

echo "" >> $LOGFILE
echo "-- Disk Usage --" >> $LOGFILE
df -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Health check complete." >> $LOGFILE
