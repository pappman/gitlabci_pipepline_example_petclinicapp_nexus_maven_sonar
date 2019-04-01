#!/bin/bash


mysql -uroot -ppetclinic -e "create database petclinic;"
sleep 2
mysql -uroot -ppetclinic -e "grant all privileges on petclinic.* to 'root'@'%' identified by 'petclinic';"
sleep 2
mysql -uroot -ppetclinic -e "flush privileges;"
sleep 2
mysql -uroot -ppetclinic petclinic < ./sql/schema.sql
sleep 2
mysql -uroot -ppetclinic petclinic < ./sql/data.sql