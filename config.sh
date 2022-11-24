#!/usr/bin/env bash

# POSTGRES PASSWORD
export PGPASSWORD = 'YOUR PG PASSWORD'

# DB BACKUP PATH
LOCAL_DIR = /home/my-user/my-folder

# DB BACKUP NAME
LOCAL_FILE_NAME = my-db-name
BACKUP_PATH=$LOCAL_DIR/$LOCAL_FILE_NAME

# REMOTE CONFIGS
REMOTE_PW = my-remote-password
REMOTE_PORT = my-remote-port
REMOTE_HOST = my-remote-user
REMOTE_DIR = my-remote-dir-backup
REMOTE_FILE_NAME = my-remote-db-backup
