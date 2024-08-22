#!/bin/bash

source ./install_aichat.sh
source ./analyze_image.sh

if ! command -v aichat &> /dev/null; then
  echo "aichat is not installed. Trying to install..."
  install_aichat
fi

if [ -z "$1" ]; then
  echo "Error: Please provide an image file or a directory as an argument."
  exit 1
fi

analyze_image "$1"
