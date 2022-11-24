# PostgreSQL Remote DB Restore
## Shell script for automatic database backup restoration from remote SSH server.

### Must have:
- Remote server with SSH configured
- **sshpass** lib installed on local server: ```sudo apt-get install sshpass```

### How to:
1. ```cd ~/```
2. ```mkdir scripts && cd scripts```
3. ```git clone https://github.com/augustokemp/postgresql-remote-db-update.git```
4. Change the variable values in the **CONFIG.SH** file
5. ```sh start-backup.sh```
