#!/usr/bin/env bash

# This is a script that uses notify-send to send a notification giving how the last process closed.
# This is particularly useful if you're doing a large command that takes a while to complete.
# You could do 
# my-command && done.sh
# and that would tell you the process closed and how it closed.

if [ $? -eq 0 ]; then
  echo 'The process finished with no errors.'
elif [ $? -eq 1 ]; then
  echo 'The process hit a general error.'
elif [ $? -eq 2 ]; then
  echo 'The process hit a misuse of shell builtins error.'
elif [ $? -eq 126 ]; then
  echo 'The process hit a command cannot be invoked error.'
elif [ $? -eq 127 ]; then
  echo 'The process hit a command not found error.'
elif [ $? -eq 128 ]; then
  echo 'The process hit a invalid argument to exit error.'
elif [ $? -gt 128 -a $? -lt 130 ]; then
  echo 'The process hit a fatal error.'
elif [ $? -eq 130 ]; then
  echo 'The process was manually terminate.'
elif [ $? -eq 255 ]; then
  echo 'The process exited with an error, but it was out of error code range.'
fi
