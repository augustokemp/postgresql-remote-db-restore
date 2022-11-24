#!/bin/bash

FOLDER_NAME=scripts
DIR=~/$FOLDER_NAME
if [ -d "${DIR}" ]; then
	cd ~/scripts
	sh ./get-backup.sh &&
		sh ./reset-db.sh &&
		echo "All Done!"
else
	echo "Diretório inexistente: ${DIR}."
	echo "Crie uma pasta chamada <${FOLDER_NAME}> e salve os arquivos dentro dela antes de executar 'start-backup.sh'"
fi
