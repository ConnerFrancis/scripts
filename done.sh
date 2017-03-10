#!/usr/bin/env bash

# This is a script that uses notify-send to send a notification giving how the last process closed.
# This is particularly useful if you're doing a large command that takes a while to complete.
# You could do 
# my-command && done.sh
# and that would tell you the process closed and how it closed.

echo $?
notify-send 'The process finished with exit code $?'
