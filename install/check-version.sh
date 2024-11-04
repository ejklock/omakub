#!/bin/bash

# Function to check if running on Ubuntu 24.04 or higher
check_ubuntu_version() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" = "pop" ]; then
      echo "$ID"
    else
      echo "Error: This script must be run on Ubuntu. Current OS: $ID" >&2
      return 1
    fi
  else
    echo "Error: Unable to determine OS. /etc/os-release file not found." >&2
    return 1
  fi
}

if ! check_ubuntu_version; then
  echo "Script execution failed due to system requirements not being met." >&2
  exit 1
fi