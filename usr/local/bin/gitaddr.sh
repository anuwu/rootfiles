#!/bin/bash
find . -type d ! -wholename "./.*" -exec bash -c "cd {} && .gitaddr" \;
printf "Added directory to git\n"