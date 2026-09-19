#!/bin/bash

source /opt/ros/humble/setup.bash
source ~/ros2ws/install/setup.bash

export LD_LIBRARY_PATH=$(echo "$LD_LIBRARY_PATH" | tr ':' '\n' \
  | grep -v '/opt/MVS/lib/aarch64' | paste -sd ':' -)

ros2 launch fast_lio mapping.launch.py config_file:=mid360.yaml rviz:=false
