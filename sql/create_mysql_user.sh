#!/bin/bash

read -s -p 'Enter a password for the new mysql user: ' db_pass
mysql -e "CREATE USER 'honeyurl'@'localhost' IDENTIFIED BY '$db_pass'"
