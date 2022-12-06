#!/bin/bash
. ./config.sh

REMOVE_DUMP_STR="cd ${REMOTE_DIR} && rm ./${REMOTE_FILE_NAME}"
sshpass -p "${REMOTE_PW}" ssh $REMOTE_HOST -p $REMOTE_PORT -t $REMOVE_DUMP_STR >>/dev/null 2>&1
