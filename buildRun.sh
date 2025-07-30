#!/bin/bash

source ./env

logfile=${KONG_LOG_FILE}

echo "Kong log file: ${logfile}"


##echo "Stop all kong related containers......................."
##./stop_containers.sh


echo "Start backend service hello world"
./install_backend.sh

#echo "Start Apache Active Directory Server................."
#./install_apacheDS.sh

#echo "Start OpenDJ................."
#./install_openDJ.sh

sleep 4

echo "Install Postgres......................................."
./install_postgres.sh

echo "Wait for Postgres Build and Start......................"
sleep 6

echo "Apply Database Migration..."
./install_migration.sh
sleep 10

echo "Build, Run and Start Kong in Interactive Mode..........."
./install_kong.sh

