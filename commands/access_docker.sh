#!/bin/bash

docker_containers=(devdocker_php-fpm_1 devdocker_nginx_1 devdocker_workspace_1 devdocker_memcached_1 devdocker_mysql_1)
container_flag=${docker_containers[0]}

container_name=$1
if [ "$container_name" = "php" ]; then
    container_flag=${docker_containers[0]}
elif [ "$container_name" = "nginx" ]; then
    container_flag=${docker_containers[1]}
elif [ "$container_name" = "workspace" ]; then
    container_flag=${docker_containers[2]}
elif [ "$container_name" = "memcached" ]; then
    container_flag=${docker_containers[3]}
elif [ "$container_name" = "mysql" ]; then
    container_flag=${docker_containers[4]}
fi
echo $container_flag
sudo docker exec -it $container_flag sh
