#!/bin/bash
. ./config.sh

if [ "${LOCAL_DIR}" = "/home/my-user/my-folder" ]; then
    echo "Please change the settings in the config.sh file before running this script."
    exit 1
else
    echo "Generating new remote dump" &&
        cd $DIR &&
        sh ./dump-remote.sh &&
        if [ -d "${LOCAL_DIR}/${LOCAL_FILE_NAME}" ]; then
            echo "Removing local backup file" &&
                cd $LOCAL_DIR &&
                rm ./$LOCAL_FILE_NAME
        else
            echo "Removing local backup file -- SKIPPED - NOT FOUND"
        fi &&
        echo "Copying remote backup to local server" &&
        sshpass -p "${REMOTE_PW}" scp -P $REMOTE_PORT $REMOTE_HOST:$REMOTE_DIR/$REMOTE_FILE_NAME $LOCAL_DIR/$LOCAL_FILE_NAME &&
        echo "Removing remote dump" &&
        cd $DIR &&
        sh ./remove-dump-remote.sh
fi
