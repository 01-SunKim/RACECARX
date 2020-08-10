#!/usr/bin/env bash

set -e

BASE_IMAGE="nvcr.io/nvidia/l4t-base:r32.4.3"
ROS_DISTRO=${1:-"all"}

echo "building containers for $ROS_DISTRO..."

# ROS Melodic
if [[ "$ROS_DISTRO" == "melodic" || "$ROS_DISTRO" == "all" ]]; then
	sh ./scripts/docker_build.sh ros:melodic-ros-base-l4t-r32.4.3 Dockerfile.ros.melodic --build-arg BASE_IMAGE=$BASE_IMAGE
fi

