#!/bin/bash

RESPONSE=$(eval "gh pr list --state merged --search \"\$${PARAM_COMMIT}\" --json id")
PULL_REQUESTS=$(echo "$RESPONSE" | jq -r '. | map(.id) | join(",")')

echo "export SK_PULL_REQUESTS=$PULL_REQUESTS" >> "$BASH_ENV"
