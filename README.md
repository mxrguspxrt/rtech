# Installation on latest Ubuntu

```
cat /etc/*version*
buster/sid

sudo apt-get install ros-desktop-full
sudo apt-get install ros-desktop-full-dev 

# http://wiki.ros.org/ROS/Tutorials/NavigatingTheFilesystem
rospack find roscpp
roscd roscpp
pwd
echo $ROS_PACKAGE_PATH
roscd roscpp/cmake
pwd
roscd log
rosls roscpp_tutorials

# http://wiki.ros.org/ROS/Tutorials/CreatingPackage
# http://wiki.ros.org/catkin/Tutorials/create_a_workspace

cd src
catkin_create_pkg beginner_tutorials std_msgs rospy roscpp
catkin_make
. devel/setup.bash

cd beginner_tutorials
cat package.xml
rospack depends1 rospy

# http://wiki.ros.org/ROS/Tutorials/BuildingPackages
 bash devel/setup.bash 
 catkin_make
 catkin_make install 
ls src
# output: beginner_tutorials  CMakeLists.txt
ls
# output: build  devel  install  README.md  src

# http://wiki.ros.org/ROS/Tutorials/UnderstandingNodes
roscore
# output: started core service [/rosout]
rsnode list
# output: rosnode list
rosnode info /rosout
# output: Pid: 25402

# http://wiki.ros.org/ROS/Tutorials/UnderstandingTopics
# 1. Because TurtleSim is missing, get it manually and install from: 
# 1. https://github.com/ros/ros_tutorials - use correct branch +
# 1. Add it to your src + catkin_make + bash devel/setup.bash
rosrun turtlesim turtlesim_node


```
