# PostgreSQL Remote DB Restore
## Shell script for automatic database backup restoration from remote SSH server.

### Must have:
- Remote server with SSH configured
- **sshpass** lib installed on local server: ```sudo apt-get install sshpass```

### How to:
1. ```cd ~/```
2. ```git clone https://github.com/augustokemp/postgresql-remote-db-update.git```
3. Change the variable values in the **CONFIG.SH** file
4. ```sh start-backup.sh```

### Run script every weekday at 08:00am:
1. ```sudo nano /etc/crontab```
2. Add the following line
> 0   8   * * 1,2,3,4,5   root    sh ~/postgresql-remote-db-update/start-backup.sh
