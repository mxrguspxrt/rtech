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
rosrun turtlesim turtle_teleop_key
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]'

# http://wiki.ros.org/ROS/Tutorials/UnderstandingServicesParams
rosservice type /clear
rosservice type /spawn | rossrv show
rosservice call /spawn 2 2 0.2 ""

# http://wiki.ros.org/ROS/Tutorials/CreatingMsgAndSrv
rosmsg show beginner_tutorials/Num
# outputs: int64 num

# http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28c%2B%2B%29
source devel/setup.bash
roscore
rosrun beginner_tutorials listener
# outputs: [ INFO] [1569183877.283433931]: I heard: [hello world 181]



```
