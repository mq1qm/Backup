#!/bin/bash
###############################################################
#
# - eksport paczki .tar.gz z folderu /var/www/html/wordpress
# - wykonywalny co 5 minut, data i godzina w nazwie
#
###############################################################

# Co backupujemy?
backup_files="/var/www/html/wordpress"

# Gdzie mają lądować pliki?
dest="/home/michal/backup"

#Nazwa pliku
day=$(date +"%Y%m%d_%H%M%S")
#day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tar.gz"

#Ogłośmy to światu
echo "Backupujemy $backup_files do $dest/$archive_file"
date
echo

#Kompresja do .tar.gz
tar czf $dest/$archive_file $backup_files

#Pochwalmy się 
echo
echo "Backup został ukończony"
date
