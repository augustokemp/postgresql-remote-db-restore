#!/bin/bash
. ./config.sh

echo "Dropping ${LOCAL_FILE_NAME}" &&
    dropdb -U postgres $LOCAL_FILE_NAME

echo "Creating ${LOCAL_FILE_NAME}" &&
    createdb -U postgres $LOCAL_FILE_NAME

echo "Restoring DB from local backup" &&
    psql -U postgres $LOCAL_FILE_NAME <$BACKUP_PATH >>/dev/null 2>&1
