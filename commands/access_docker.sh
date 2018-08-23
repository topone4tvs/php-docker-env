#!/bin/bash

container_flag=$(docker-compose --project-directory=/var/env/dev_docker ps | grep $1 | grep -v 'grep' | awk '{print $1}')
echo $container_flag
sudo docker exec -it $container_flag bash
