#!/bin/bash

tar cvvWf /var/backup/home.tar ~/home 

NOW=$(date +"%m%d%Y")

mv /var/backup/home.tar /var/backup/home.$NOW.tar

ls -lah /var/backup > /var/backup/file_report.txt

free -h > /var/backup/disk_report
 
