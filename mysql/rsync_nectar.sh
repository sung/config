#/bin/bash
/etc/init.d/mysqld stop
rsync -a --delete --verbose /backup/beomaster01.bw.rbht.nhs.uk/data/Serve/mysql/NECTAR_DEVEL/ /backup/beomaster01.bw.rbht.nhs.uk/data/Serve/mysql/NECTAR
/etc/init.d/mysqld start 
