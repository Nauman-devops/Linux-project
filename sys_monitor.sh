#!/bin/bash
# Basic System Monitor

echo "===== Disk Usage ====="
df -h | grep "^/dev/"

echo "===== Memory Usage ====="
free -h

echo "===== CPU Load ====="
uptime

echo "===== Top 5 Processes ====="
ps aux --sort=-%mem | head -n 6
