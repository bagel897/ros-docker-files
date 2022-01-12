#!/usr/bin/bash
source /opt/ros/$ROS_DISTRO/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
wstool init src https://raw.githubusercontent.com/utexas-bwi/bwi/master/rosinstall/$ROS_DISTRO.rosinstall
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro $ROS_DISTRO -y
catkin build -j8
source devel/setup.bash
