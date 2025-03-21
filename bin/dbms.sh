#! /bin/bash

source ../src/config.sh
source ../src/database.sh

while true
do
    clear
    echo -e "Welcome, $USER!\n\nMain Menu:"
    PS3='Enter your choice number: '

    select userInput in 'Create a database' 'List all databases' 'Connect to a database' 'Drop a database' 'Exit'
    do
        case $REPLY in
        1) createDatabase; break;;
        2) listDatabases; break;;
        3) connectToDatabase; break;;
        4) dropDatabase; break;;
        5) exit 0;;
        *) echo 'Invalid option number, try again...';;
        esac
    done
done