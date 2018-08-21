# Download base image ubuntu 16.04
FROM ubuntu:16.04

ENV HOME /root
 
# Update Software repository
RUN apt-get update

RUN apt-get -yq install curl \
			vim \
			nano \
			unzip \
			git \
			gcc \
                        build-essential \
                        wget \
                        bzip2 \
                        tar \
                        m4 \
                        libopenmpi-dev \
                        file \
			libnetcdf-dev \
			libnetcdf-cxx-legacy-dev \	
			libnetcdf-c++4-dev

COPY setupDocker.sh /home/setupDocker.sh
