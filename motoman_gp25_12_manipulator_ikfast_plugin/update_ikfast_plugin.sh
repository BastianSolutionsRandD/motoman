search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=motoman_gp25_12.srdf
robot_name_in_srdf=motoman_gp25_12
moveit_config_pkg=motoman_gp25_12_moveit_config
robot_name=motoman_gp25_12
planning_group_name=manipulator
ikfast_plugin_pkg=motoman_gp25_12_manipulator_ikfast_plugin
base_link_name=base_link
eef_link_name=tool0
ikfast_output_path=/home/dylan/pick_n_place_ws/src/motoman/motoman_gp25_12_support/urdf/motoman_gp25_12_manipulator_ikfast_plugin/src/motoman_gp25_12_manipulator_ikfast_solver.cpp

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
