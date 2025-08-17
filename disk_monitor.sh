#!/bin/bash
used_size=$(df -h | grep "/dev/sda2" | awk '{print $5}' | tr -d '%')
limit=85
destination='mail@example.ru'
readonly memory_not_ok="Used disk size > $limit%"

echo "$used_size%"

if  [ "$used_size" -lt "$limit" ]; then
  echo "Used disk size < $limit%" 

else 
   (
     echo "Subject: Disk Memory Status"
     echo ""
     echo "$memory_not_ok"
  ) | ssmtp -v "$destination"

fi