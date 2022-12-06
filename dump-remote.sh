#!/bin/bash
. ./config.sh

DUMP_STR="pg_dump ${REMOTE_DB_URL} > ${REMOTE_DIR}/${REMOTE_FILE_NAME}"
sshpass -p "${REMOTE_PW}" ssh $REMOTE_HOST -p $REMOTE_PORT -t $DUMP_STR >>/dev/null 2>&1
