#!/bin/bash

echo "--- $(date "+%Y-%m-%d %H:%M:%S") ---" >> monitor.log
free -h >> monitor.log
df -h >> monitor.log
uptime >> monitor.log

echo "" >> monitor.log
