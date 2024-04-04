# Use Ubuntu 16.04 as base image
# Use Ubuntu 16.04 as base image
FROM ubuntu:16.04 AS base

# Change shell to bash
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Update and install required packages
RUN apt-get update && apt-get install -y \
    software-properties-common \
    build-essential \
    gcc-5 g++-5 \
    cmake

# Add Ubuntu Toolchain PPA
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
    apt-get update

# Install libpcl-dev
RUN apt-get install libpcl-dev -y

# Install additional dependencies
RUN apt-get install -y \
    python3-pip 


# Run specific commands for building the Lidar Obstacle Detection environment
RUN apt-get update && apt-get install -y \
    git && \
    git clone https://github.com/udacity/SFND_Lidar_Obstacle_Detection.git && \
    cd SFND_Lidar_Obstacle_Detection && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make





