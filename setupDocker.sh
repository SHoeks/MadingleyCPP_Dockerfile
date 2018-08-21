#!/bin/bash

# require correct path to input_dir
read -p 'Specify Madingley input data directory: ' input_dir
printf "\n"

# require correct docker image id
docker images
printf "\n"
read -p 'Specify docker image name: ' image_name
printf "\n"
echo Running $image_name docker image... 
echo Mounting $input_dir in docker image...
printf "\n"

docker run -v $input_dir:/mnt/MadingleyData-master -it $image_name /bin/bash
