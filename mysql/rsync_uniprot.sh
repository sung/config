#/bin/bash
/etc/init.d/mysqld stop
rsync -a --delete --verbose /backup/beomaster01.bw.rbht.nhs.uk/data/Serve/mysql/UNIPROT_DEVEL/ /backup/beomaster01.bw.rbht.nhs.uk/data/Serve/mysql/UNIPROT
/etc/init.d/mysqld start 
