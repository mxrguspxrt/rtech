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

```
