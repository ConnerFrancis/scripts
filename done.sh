#!/usr/bin/env bash

# This is a script that uses notify-send to send a notification giving how the last process closed.
# This is particularly useful if you're doing a large command that takes a while to complete.
# You could do 
# my-command && done.sh
# and that would tell you the process closed and how it closed.

echo $?

if [ "$?" = "0" ]; then
  notify-send 'The process finished with no errors.'
fi

if [ "$?" = "1" ]; then
  notify-send 'The process hit a general error.'
fi

if [ "$?" = "2" ]; then
  notify-send 'The process hit a \'misuse of shell builtins\' error.'
fi

if [ "$?" = "126" ]; then
  notify-send 'The process hit a \'command cannot be invoked\' error.'
fi

if [ "$?" = "127" ]; then
  notify-send 'The process hit a \'command not found\' error.'
fi

if [ "$?" = "128" ]; then
  notify-send 'The process hit a \'invalid argument to exit\' error.'
fi

if [ "$?" = "130" ]; then
  notify-send 'The process was manually terminate.'
fi

notify-send 'The process finished with exit code $?'
