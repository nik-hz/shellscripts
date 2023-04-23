# Shellscripts

## Installation

Clone download branch of the repo and execute the install script. It will add the src file to your path, which contains all executables.

Run any exe with -h to see instructions

## Executables 

### gits
Three line executable that does git add, commit and push, adds 'edited <last edited file> at <time>' for all edited files if you give no input, otherwise you can provide a custom message.

```
Usage: git-push [-h] [ -m <commit_message>]
Push changes to the upstream repository with the given message

Options:
  -h, --help  show this help message and exit
  -m, --message  add a custom commit message

Arguments:
  <commit_message>  optional commit message for the changes
```

### killnamed
Runs ps -ef | grep <name> and then kills all processes with the following name. Use with caution!
```
Usage: [-h] [-n <process_name>]
Kills all processes with the given name

Options:
  -h              Show this help message
  -n <process_name>  Specify the process name to kill
```

### diffcheck
Runs two processes with commands given in a user defined command file, saves outputs to two files compares difference 

```
Usage: compare.sh -1 <executable1> -2 <executable2> -c <commands_file>

Compare the output of two executables on a set of commands

Options:
  -h, --help     Show this help message and exit
  -1, --exec1    Path to the first executable
  -2, --exec2    Path to the second executable
  -c, --commands Path to the file containing the commands
```