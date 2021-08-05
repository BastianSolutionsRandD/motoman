# Generating this package

First, install the IKFast prerequisites as described on <https://ros-planning.github.io/moveit_tutorials/doc/ikfast/ikfast_tutorial.html>:

    sudo apt-get install ros-${ROS_DISTRO}-moveit-kinematics docker.io
    sudo service docker start
    sudo usermod -a -G docker $USER

You need to log off/log on in order to actually activate this last permission change.

Next, you can regenerate this package like so:

    rosrun xacro xacro -o /tmp/es165d_manipulator.urdf $(rospack find motoman_es165d_support)/urdf/es165d.xacro 
    rosrun collada_urdf urdf_to_collada /tmp/es165d_manipulator.urdf /tmp/es165d_manipulator.dae
    rosrun moveit_kinematics round_collada_numbers.py /tmp/es165d_manipulator.dae /tmp/es165d_manipulator.rounded.dae 5
    rosrun moveit_kinematics auto_create_ikfast_moveit_plugin.sh --iktype Transform6D --name es165d /tmp/es165d_manipulator.rounded.dae manipulator base_link link_t
    mv es165d_manipulator_ikfast_plugin $(rospack find motoman)/..
