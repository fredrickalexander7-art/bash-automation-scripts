#!/bin/bash


echo ""
echo "=== Date and Time ==="
uptime
echo ""
echo ""
echo "=== Hostname and Current User ==="
hostname
whoami
echo ""
echo ""
echo "=== CPU Load Average ==="
uptime
echo ""
echo ""
echo "=== Memory Usage & Disk Usage ==="
free -h
df -h
echo ""
echo ""
echo "=== Top 5 Processes by CPU ==="
ps aux --sort=-%cpu | head -6
echo ""
echo ""
echo "=== System Info (uname/lscpu) ==="
uname -a
echo ""
lscpu | grep -E "Model name|CPU\(s\)|Architecture"
echo ""
echo "=== Logged-in Users ==="
who
echo ""
echo ""
echo "=== Last 5 System Log Lines ==="
sudo tail -5 /var/log/messages
echo ""
echo ""
