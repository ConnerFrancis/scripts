#!/usr/bin/env bash

# This is a script to enter in a bunch of git commands
# I'm lazy
# NOTE: This script assumes you want to push everything, commit everything, and push everything.
#       It also assumes that you're repository is named origin and you're pushing to branch master.

# first do git add .
git add .

# next do git commit
git commit

# good, now finish it up buddy
git push origin master
