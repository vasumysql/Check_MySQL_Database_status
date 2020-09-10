MySQL Database status Script 


This is small mysql database status script. 

Installation :-

Copy the script in :

/root/DB_Status.sh

Configuration :-

YOURDBUSER with your database administrative user username (for instance : john).
MYSQL_PASS with your database administrative user password (for instance : ****).
SERVER_HOST with the MySQL instance host (for instance : localhost).
EMAIL with the required mail you can mention 

In the script you can 

Permissions :- 

Set the owner/group to root user :

sudo chown root:root /root/DB_Status.sh

Set Read/Write/Execute to root user only, others (group and others) get nothing :

sudo chmod 700 /root/DB_Status.sh

Test :- 

As root : /root/DB_Status.sh

and

sudo /root/DB_Status.sh
