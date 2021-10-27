
include "map_builder.lua"
include "trajectory_builder.lua"

options = {
  map_builder = MAP_BUILDER,
  trajectory_builder = TRAJECTORY_BUILDER,
  map_frame = "map",
  tracking_frame = "imu_link",
  published_frame = "base_link",
  odom_frame = "odom",
  provide_odom_frame = true,
  publish_frame_projected_to_2d = false,
  use_pose_extrapolator = true,
  use_odometry = true,
  use_nav_sat = true,
  use_landmarks = false,
  num_laser_scans = 0,
  num_multi_echo_laser_scans = 0,
  num_subdivisions_per_laser_scan = 1,
  num_point_clouds = 5,
  lookup_transform_timeout_sec = 0.2,
  submap_publish_period_sec = 0.3,
  pose_publish_period_sec = 5e-3,
  trajectory_publish_period_sec = 30e-3,
  rangefinder_sampling_ratio = 1.,
  odometry_sampling_ratio = 1.,
  fixed_frame_pose_sampling_ratio = 1.,
  imu_sampling_ratio = 1.,
  landmarks_sampling_ratio = 1.,
}

MAP_BUILDER.num_background_threads = 24
MAP_BUILDER.use_trajectory_builder_3d = true

TRAJECTORY_BUILDER_3D.num_accumulated_range_data = 50
TRAJECTORY_BUILDER_3D.submaps.num_range_data = 100

POSE_GRAPH.constraint_builder.min_score = 0.8
--POSE_GRAPH.constraint_builder.max_constraint_distance = 15.
--POSE_GRAPH.constraint_builder.global_localization_min_score = 0.4

--TRAJECTORY_BUILDER_3D.voxel_filter_size = 0.5

--TRAJECTORY_BUILDER_3D.use_online_correlative_scan_matching = false
--TRAJECTORY_BUILDER_3D.ceres_scan_matcher.ceres_solver_options.num_threads = 10
--TRAJECTORY_BUILDER_3D.ceres_scan_matcher.translation_weight = 5.
--TRAJECTORY_BUILDER_3D.ceres_scan_matcher.rotation_weight = 50


POSE_GRAPH.optimize_every_n_nodes = 30

return options
