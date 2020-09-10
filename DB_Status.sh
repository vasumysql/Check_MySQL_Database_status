#!/bin/sh

#######################################
#         Connection details          #
#######################################

MYSQL_USER="root"                         ---> Provide the MySQL DB Supeer User
MYSQL_PASS="root"                         ---> Provide the MySQL DB Supeer User Password
MYSQL_HOST="localhost"                    ---> Provide the MySQL DB Hostname like % or hostname
SERVER_HOST=hostname.xxxxxx.com           ---> Provide the MySQL DB Hostname
EMAIL=test123@gmail.com                   ---> Provide the Mail id

########################################
#            MySQL status              #  
########################################

mysqladmin -u${MYSQL_USER} -p${MYSQL_PASS} -h${MYSQL_HOST} ping 2 > /dev/null 1>/dev/null
if [ $? -ne 0 ]; then
echo " MySQL DATABASE IS DOWN " | mail -s " MySQL Database is not running on $SERVER_HOST" "$EMAIL"
fi
# END!!
