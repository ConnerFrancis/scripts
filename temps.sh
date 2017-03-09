#!/usr/bin/env bash

# This is a script to open my temperature monitors, nvidia-smi and lm-sensors
# This also opens the monitor windows to the top right and bottom right corners of the screen

# 'sensors' outputs the CPU temperatures
gnome-terminal -e /usr/local/bin/temps-cpu.sh

# 'nvidia-smi' outputs the GPU temperature
# the tool comes with nvidia gpu drivers for linux
gnome-terminal -e /usr/local/bin/temps-cpu.sh
