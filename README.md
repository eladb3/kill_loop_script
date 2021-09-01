# kill_loop_script

This program will print a file path on the beginning and will start an infinite loop, if the file is not there it will kill all your python process on the machine and will recreate this file.

Run instructions:

1. Modify the command in killfile.sh, line 19 (you can uncomment the `pkill -9 -f python -u $USER` line if you want to kill all your python processes).
2. run: `./killfile_wrapper.sh`

This program won't stop unless you kill it.
