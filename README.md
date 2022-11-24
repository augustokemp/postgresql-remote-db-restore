# PostgreSQL Remote DB Restore
- Shell script for automatic database backup restoration from remote SSH server.

* Must have:
- Remote server with SSH configured
- **sshpass** lib installed on local server: ```sudo apt-get install sshpass```

* How to:
1. Change the variable values in the **CONFIG.SH** file
2. ```sh start-backup.sh```
