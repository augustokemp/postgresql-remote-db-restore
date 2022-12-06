#!/bin/bash
. ./config.sh

if [ -d "${DIR}" ]; then
	cd $DIR
	sh ./get-backup.sh &&
		sh ./reset-db.sh &&
		echo "All Done!"
else
	echo "Directory not found: ${DIR}."
	echo "Create a folder called <${FOLDER_NAME}> and save all files inside it before running 'start-backup.sh'"
fi
