=====
Usage
=====

A2D2 Rosbag
===========

The Audi Autonomous Driving Dataset (A2D2) can be downloaded from `this site`_ and converted to a rosbag
using the `A2D2 ROS Preparer`_.

.. _this site: https://www.a2d2.audi/a2d2/en/download.html
.. _A2D2 ROS Preparer: https://github.com/tum-gis/a2d2_ros_preparer

Running Cartographer
====================

Launch a 3D SLAM demo based on the A2D2 bag:

.. code-block:: bash

    source ./devel_isolated/setup.bash

    roslaunch cartographer_audi_a2d2 demo_a2d2.launch \
        bag_filename:=/path/to/Ingolstadt_output/driving_data.bag

Generate the map and wait until cartographer_offline_node finishes:

.. code-block:: bash

    roslaunch cartographer_audi_a2d2 offline_a2d2.launch \
        load_state_filename:=${HOME}/Downloads/Ingolstadt_output/driving_data.bag.pbstream \
        bag_filename:=${HOME}/Downloads/Ingolstadt_output/driving_data.bag

Only visualize the generated map:

.. code-block:: bash

    roslaunch cartographer_audi_a2d2 visualize_pbstream.launch \
        pbstream_filename:=${HOME}/Downloads/Ingolstadt_output/driving_data.bag.pbstream

Write images

.. code-block:: bash

    roslaunch cartographer_audi_a2d2 offline_a2d2.launch \
        pose_graph_filename:=${HOME}/Downloads/Ingolstadt_output/driving_data.bag.pbstream \
        bag_filename:=${HOME}/Downloads/Ingolstadt_output/driving_data.bag
