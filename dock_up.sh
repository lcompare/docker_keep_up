#!/bin/bash
container_id="6579797fbbd2"
output=$(docker ps | grep $container_id)
len=${#output}
if [ $len -lt 50 ]
then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - starting container $container_id"
    docker start $container_id
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - container $container_id is up"
fi