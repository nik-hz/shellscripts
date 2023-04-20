#!/bin/bash

# Check if the name argument is given
if [ -z "$1" ]; then
  echo "Please provide a process name as an argument"
  exit 1
fi

# Find the process IDs with the given name
pids=$(ps -ef | grep "$1" | grep -v grep | awk '{print $2}')

# If there are no matching processes, exit
if [ -z "$pids" ]; then
  echo "No processes found with the name '$1'"
  exit 0
fi

# Kill all processes with the given name
echo "Killing processes with the name '$1':"
for pid in $pids; do
  echo "  - Killing process $pid"
  kill $pid
done

echo "Done."
