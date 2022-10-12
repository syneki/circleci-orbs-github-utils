#!/bin/bash

IFS=',' read -r -a array <<< "$string"
for element in "${array[@]}"
do
    eval "gh pr comment \"${element}\" -b \"${PARAM_BODY}\""
done
