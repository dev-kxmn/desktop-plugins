#!/bin/bash

#
# Processa imagens para catálogo
#

$fm_import    # import file manager variables (scroll down for info)
#
# Enter your commands here:     ( then save this file )

export DATE=$(date +%Y%m%d)
export BACKUPDIR=/srv/Kaxamana/Backup/$DATE
export DRIVEDIR=$(dirname "$1")/Drive;
mkdir -p $DRIVEDIR $BACKUPDIR

convert "${fm_files[@]}" -compress Zip pdf-$DATE.pdf

exit $?
