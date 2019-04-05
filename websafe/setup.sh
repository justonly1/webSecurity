#!/bin/bash
service mysql start&
mysql -u root -e "
create database exam;
use exam;
source exam.sql;
quit
"
service apache2 start
