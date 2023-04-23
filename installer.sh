#!/bin/bash

# Change directory to the current directory
cd "$(dirname "${BASH_SOURCE[0]}")" || exit

# Change permissions of all bash scripts in ./src to executable
find ./src -type f -name "*.sh" -exec chmod +x {} \;

# Check if ./src is already in the PATH
if echo "$PATH" | grep -q "$PWD/src"; then
    echo "Executable bash scripts in ./src are already in PATH"
else
    # Add ./src to the PATH
    export PATH="$PATH:$PWD/src"

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

    echo "Executable bash scripts in ./src added to PATH"
fi
