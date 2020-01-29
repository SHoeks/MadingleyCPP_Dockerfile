#!/bin/bash

# require correct docker image id
docker images
printf "\n"
read -p 'Specify docker image name: ' image_name
printf "\n"
echo Running $image_name docker image... 
printf "\n"

docker run -it $image_name /bin/bash
