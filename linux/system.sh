#!/bin/bash

# Free memory output to a  free_mem.txt file

free -h > /home/sysadmin/backups/freemem/free_mem.txt

# Disk usage output to a disk_usage.txt file

df -h > /home/sysadmin/backups/diskuse/disk_usage.txt

# list open to files to a open_list.txt file

lsof > /home/sysadmin/backups/openlist/open_list.txt

# free disk space to a free_disk.txt file

df -h > /home/sysadmin/backups/freedisk/free_disk.txt

