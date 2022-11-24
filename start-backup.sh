#!/bin/bash

FOLDER_NAME=postgresql-remote-db-restore
DIR=~/$FOLDER_NAME
if [ -d "${DIR}" ]; then
	cd $DIR
	sh ./get-backup.sh &&
		sh ./reset-db.sh &&
		echo "All Done!"
else
	echo "Diretório inexistente: ${DIR}."
	echo "Crie uma pasta chamada <${FOLDER_NAME}> e salve os arquivos dentro dela antes de executar 'start-backup.sh'"
fi
