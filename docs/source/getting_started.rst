===============
Getting Started
===============

Since this package only provides the configurations and launch files, the building and installation is very similar
to the `Cartographer ROS package`_.

.. _Cartographer ROS package: https://google-cartographer-ros.readthedocs.io/en/latest/compilation.html

Prerequisites
=============

With a ROS noetic installation, install the following packages:

.. code-block:: bash

    sudo apt install git python3-wstool python3-rosdep ninja-build ros-noetic-cnpy

Building
========

Create the workspace and clone the repo:

.. code-block:: bash

    mkdir catkin_ws
    cd catkin_ws

    source /opt/ros/noetic/setup.bash    
    wstool init src
    wstool merge -t src https://raw.githubusercontent.com/tum-gis/cartographer_audi_a2d2/master/cartographer_audi_a2d2.rosinstall
    wstool update -t src

Install the package dependencies and run catkin for compiling:

.. code-block:: bash

    sudo rosdep init
    rosdep update

    # if on Linux Mint 20, add the argument: --os=ubuntu:focal
    rosdep install --from-paths src --ignore-src -r --rosdistro=${ROS_DISTRO} -y
    # needed for Cartographer
    src/cartographer/scripts/install_abseil.sh
    catkin_make_isolated --install --use-ninja

In case you want to use `CLion`_ as IDE, run:

.. code-block:: bash

    source ./devel_isolated/setup.bash
    clion ./ &

.. _CLion: https://www.jetbrains.com/help/clion/ros-setup-tutorial.html
