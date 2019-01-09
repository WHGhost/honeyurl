#!/bin/bash

if [ $(id -u) != "0" ]
then
        echo "This script needs to be ran as root so it can delete the database."
        exit
fi

echo "You are about to remove the entire database, continue ?"
read -p 'y/N: ' input

if [ $input != 'y' ]
then
	echo "Aborted"
	exit 1
fi
mysql -e "SOURCE sql/clean_database.sql;"
