#!/bin/bash

if [ $(id -u) != "0" ]
then
	echo "This script needs to be ran as root to setup the packages and databases"
	exit
fi

echo "Creating and initializing database..."
mysql -e "SOURCE sql/create_database.sql"
./sql/create_mysql_user.sh
mysql -e "SOURCE sql/set_perms.sql"

