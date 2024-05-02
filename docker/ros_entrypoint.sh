#!/bin/bash
set -e

# setup ros2 environment
source "${ROS_WORKSPACE}/install/setup.bash" --

# exec "$@"

# ros2 run mavros mavros_node --ros-args -p fcu_url:=$FCU_URL -p gcs_url:=$GCS_URL
ros2 launch rover_bringup bringup_launch.py  fcu_url:=$FCU_URL  gcs_url:=$GCS_URL