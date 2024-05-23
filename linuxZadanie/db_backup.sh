#!/bin/bash

source /linuxZadanie/db_backup.conf

TIMESTAMP=$(date +"%F")
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$TIMESTAMP.sql"

if [ "$DB_TYPE" == "mysql" ]; then
    mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_FILE
elif [ "$DB_TYPE" == "postgres" ]; then
    PGPASSWORD=$DB_PASS pg_dump -h $DB_HOST -U $DB_USER $DB_NAME > $BACKUP_FILE
else
    echo "Unsupported database type"
    exit 1
fi

echo "Backup completed: $BACKUP_FILE"

find $BACKUP_DIR -type f -name "$DB_NAME-*.sql" -mtime +$RETENTION_DAYS -exec rm {} \;
echo "Old backups deleted"
