#!/bin/bash 

echo "All variables passed to the script: $@"

echo "number variables passed to script: $#"

echo "script name: $0"

echo "current working directory name: $PWD"
 echo "home directory of current user: $HOME"
   echo "process instance ID of current script execution: $$"

   sleep 100 &

   echo "PID of last background command: $!"
   



