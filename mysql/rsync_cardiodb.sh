#/bin/bash
/etc/init.d/mysqld stop
rsync -a --delete --verbose /data/Serve/mysql/CARDIODB_DEVEL/ /data/Serve/mysql/CARDIODB
/etc/init.d/mysqld start 
