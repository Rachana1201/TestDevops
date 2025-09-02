#!/bin/bash

# Get disk usage (human-readable) for root (/)
usage=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%//')

# Check if usage is greater than or equal to 80
if [ "$usage" -ge 80 ]; then
    echo "Disk storage is more than 80%. Current usage: $usage%"
else
    echo "Disk storage is under control. Current usage: $usage%"
fi
