#!/bin/bash

PULL_REQUESTS=$(eval "gh pr list --state merged --json title --search \"\$${PARAM_COMMIT}\" --json id --jq \".[].id\"")
echo $PULL_REQUESTS