#!/bin/bash
set -e

# setup ros2 environment
source "/opt/ros/$ROS_DISTRO/setup.bash" --

#exec "$@"

ros2 run mavros mavros_node --ros-args -p fcu_url:=/dev/ttyACM0 -p gcs_url:=udp://@192.168.1.107
