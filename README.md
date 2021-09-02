# kill_loop_script

This program will print a file path on the beginning and will start an infinite loop, if the file is not there it will kill all your python processes and processes that use gpu memory on the machine and will recreate this file.

WARNINGS:
1. If you have other process that might consume gpu memory and it won't be killed by the default commands, please add the command to kill it in `killfile.sh` line 29.
2. This program will kill all your python and gpu consuming processes.
3. This program won't stop unless you kill it.

Run instructions:
1. run: `./killfile_wrapper.sh`

