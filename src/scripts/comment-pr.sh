#!/bin/bash

PULL_REQUESTS=$(eval "echo \"\$${PARAM_PR}\"")

IFS=',' read -r -a array <<< "${PULL_REQUESTS}"
for element in "${array[@]}"
do
    eval "gh pr comment \"${element}\" -b \"${PARAM_BODY}\""
done
