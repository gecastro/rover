FROM ros:humble-ros-core-jammy

RUN apt update && \
 apt -y install ros-humble-mavros ros-humble-mavros-extras ros-humble-ntrip-client && \
 /opt/ros/humble/lib/mavros/install_geographiclib_datasets.sh

# ros2 run mavros mavros_node --ros-args -p fcu_url:=/dev/ttyACM1 -p gcs_url:=udp://@192.168.1.107
# docker create -t --restart unless-stopped --name ros-humble --net=host -v /dev:/dev --privileged ros-humble

COPY ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
