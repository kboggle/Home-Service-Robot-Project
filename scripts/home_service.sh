#!/bin/sh
xterm  -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/catkin_ws/src/my_robot/worlds/home_service.world" &
sleep 15
xterm  -e "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/catkin_ws/src/my_robot/maps/home_service.yaml" &
sleep 10
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 10
xterm  -e "rosrun add_markers add_markers" &
sleep 5
xterm  -e "rosrun pick_objects pick_objects_node" &
sleep 5
xterm -e "roslaunch turtlebot_teleop keyboard_teleop.launch"