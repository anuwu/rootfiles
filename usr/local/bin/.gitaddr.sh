#!/bin/bash

if [ -e git.files ]; then
    cat git.files | xargs git add
fi