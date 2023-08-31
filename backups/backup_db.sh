#!/usr/bin/env bash

source ../.env

container_name="db_humhub"
root_db_pass=${MARIADB_ROOT_PASSWORD}
db_name=${HUMHUB_DB_NAME}

docker exec -i ${container_name} mysqldump --user='root' --password=${root_db_pass} ${db_name} > ${db_name}_$(date +%Y-%m-%d).sql
