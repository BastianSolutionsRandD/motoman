# Generating this package

First, install the IKFast prerequisites as described on <https://ros-planning.github.io/moveit_tutorials/doc/ikfast/ikfast_tutorial.html>:

    sudo apt-get install ros-${ROS_DISTRO}-moveit-kinematics docker.io
    sudo service docker start
    sudo usermod -a -G docker $USER

You need to log off/log on in order to actually activate this last permission change.

Next, you can regenerate this package like so:

    rosrun xacro xacro -o /tmp/mh5l_manipultor.urdf $(rospack find motoman_mh5_support)/urdf/mh5l.xacro 
    rosrun collada_urdf urdf_to_collada /tmp/mh5l_manipulator.urdf /tmp/mh5l_manipulator.dae
    rosrun moveit_kinematics round_collada_numbers.py /tmp/mh5l_manipulator.dae /tmp/mh5l_manipulator.rounded.dae 5
    rosrun moveit_kinematics auto_create_ikfast_moveit_plugin.sh --iktype Transform6D --name mh5l /tmp/mh5l_manipulator.rounded.dae manipulator base_link link_t
    mv mh5l_manipulator_ikfast_plugin $(rospack find motoman)/..
