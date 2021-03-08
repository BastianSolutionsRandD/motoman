search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=es165d.srdf
robot_name_in_srdf=es165d
moveit_config_pkg=es165d_moveit_config
robot_name=es165d
planning_group_name=manipulator
ikfast_plugin_pkg=es165d_manipulator_ikfast_plugin
base_link_name=base_link
eef_link_name=link_t
ikfast_output_path=/home/marq/pnp3_ws/es165d_manipulator_ikfast_plugin/src/es165d_manipulator_ikfast_solver.cpp

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
