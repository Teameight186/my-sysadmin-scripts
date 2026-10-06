#!/bin/bash

INTERVAL=5

echo "Мониторинг запущен с интервалом $INTERVAL сек. Для остановки нажмите Ctrl+C..."

trap 'echo -e "\nМониторинг остановлен пользователем."; exit 0' SIGINT

while true; do

    echo "--- $(date "+%Y-%m-%d %H:%M:%S") ---" >> monitor.log
    free -h >> monitor.log
    df -h >> monitor.log
    uptime >> monitor.log

    echo "" >> monitor.log
    sleep $INTERVAL
done

