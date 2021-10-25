tar -zcf /var/backups/$(date +%Y%m%d).tar.gz -C /home/ oleg
rsync -a --delete /var/backups/*.tar.gz root@172.20.204.133:/var/backup/
