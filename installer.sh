#!/bin/bash

# Change directory to the current directory
cd "$(dirname "${BASH_SOURCE[0]}")"

# Change permissions of all bash scripts in ./src to executable
find ./src -type f -name "*.sh" -exec chmod +x {} \;

# Add ./src to the PATH
export PATH="$PATH:$PWD/src"

# Reload the shell profile to apply the changes to the PATH
source ~/.bashrc


echo "Executable bash scripts in ./src added to PATH"
