#!/usr/bin/env bash

# This is a script that uses notify-send to send a notification giving how the last process closed.
# This is particularly useful if you're doing a large command that takes a while to complete.
# You could do 
# my-command && done.sh
# and that would tell you the process closed and how it closed.

if [ "$?" = "0" ]; then
  notify-send 'The process finished with no errors.'
elif [ "$?" = "1" ]; then
  notify-send 'The process hit a general error.'
elif [ "$?" = "2" ]; then
  notify-send 'The process hit a \'misuse of shell builtins\' error.'
elif [ "$?" = "126" ]; then
  notify-send 'The process hit a \'command cannot be invoked\' error.'
elif [ "$?" = "127" ]; then
  notify-send 'The process hit a \'command not found\' error.'
elif [ "$?" = "128" ]; then
  notify-send 'The process hit a \'invalid argument to exit\' error.'
elif [ "$?" = "130" ]; then
  notify-send 'The process was manually terminate.'
elif [ "$?" = "255" ]; then
  notify-send 'The process exited with an error, but it was out of error code range..'
fi
