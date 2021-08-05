search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=mh5l.srdf
robot_name_in_srdf=mh5l
moveit_config_pkg=mh5l_moveit_config
robot_name=mh5l
planning_group_name=manipulator
ikfast_plugin_pkg=mh5l_manipulator_ikfast_plugin
base_link_name=base_link
eef_link_name=link_t
ikfast_output_path=/home/mmoll/pickbot_ws/src/motoman/mh5l_manipulator_ikfast_plugin/src/mh5l_manipulator_ikfast_solver.cpp

rosrun moveit_kinematics create_ikfast_moveit_plugin.py\
  --search_mode=$search_mode\
  --srdf_filename=$srdf_filename\
  --robot_name_in_srdf=$robot_name_in_srdf\
  --moveit_config_pkg=$moveit_config_pkg\
  $robot_name\
  $planning_group_name\
  $ikfast_plugin_pkg\
  $base_link_name\
  $eef_link_name\
  $ikfast_output_path
