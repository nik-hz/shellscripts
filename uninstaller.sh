#!/bin/bash

# Change directory to the current directory
cd "$(dirname "${BASH_SOURCE[0]}")" || exit

# Remove ./src from the PATH
export PATH=$(echo $PATH | sed -e "s#:$PWD/src##g")
echo "Executable bash scripts in ./src removed from PATH"

# Reload the shell profile to apply the changes to the PATH
if [[ -f ~/.bashrc ]]; then
    # shellcheck source=~/.bashrc
    source ~/.bashrc
elif [[ -f ~/.zshrc ]]; then
    # shellcheck source=~/.zshrc
    source ~/.zshrc
elif [[ -f ~/.profile ]]; then
    # shellcheck source=~/.profile
    source ~/.profile
else
    echo "Unable to find shell profile to reload"
fi

# Delete the directory ./shellscripts
if rm -rf ../shellscripts; then
    echo "Directory $PWD/shellscripts deleted"
else
    echo "Error: Failed to delete directory $PWD/shellscripts"
    exit 1
fi
