#! /bin/bash

source=$1
base_name=$(basename ${source})
destination=$2

function validate() {
    if [ -f $destination/backup-$base_name.tar.gz ]
    then
        echo "Backup file already exists!"
        exit 1
    fi

    if [ ! -e $source ]
    then
        echo "Source directory or file does not exist!"
        exit 1
    fi
}

function compress() {
    tar -cvf backup-$base_name.tar $1
    gzip backup-$base_name.tar
    mv backup-$base_name.tar.gz $2
    return 0
}

function message() {
    if [ $3 -eq 0 ]
    then
        echo "Backup of $1 completed and moved to $2"
        echo "Backup file name: backup.tar.gz"
        echo ""
        exit 0
    else
        echo "An error occurred during the backup process."
        exit 1
    fi
}

####

validate $source $destination
compress $source $destination
exit_code=$?
message $source $destination $exit_code