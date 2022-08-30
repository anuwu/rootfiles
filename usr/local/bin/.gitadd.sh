#!/bin/bash

while IFS="" read -r p || [ -n "$p" ]
do
  if ! [[ $p = \#* ]]; then
    if ! [[ -z "${p// }" ]]; then
        git add $p
    fi
  fi
done < git.files