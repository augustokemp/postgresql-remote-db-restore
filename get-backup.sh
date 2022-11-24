#!/bin/bash
. ./config.sh

echo "Removendo backup atual" &&
    cd $LOCAL_DIR &&
    rm ./$LOCAL_FILE_NAME

echo "Importando novo backup" &&
    sshpass -p "${REMOTE_PW}" scp -P $REMOTE_PORT $REMOTE_HOST:$REMOTE_DIR/$REMOTE_FILE_NAME $LOCAL_DIR/$LOCAL_FILE_NAME
