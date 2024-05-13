#!/usr/bin/env bash

SYSTEM_USER=$SUDO_USER

# Install essential tools
sudo apt install -y build-essential libpixman-1-dev libcairo2-dev libpango1.0-dev libjpeg8-dev libgif-dev
sudo apt install -y pkg-config