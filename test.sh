#!/bin/bash

export COMMIT="3b8313185f2f6d63a654f0c820ab2af46fb7d15a"
export PARAM_COMMIT="COMMIT"

EXPECTED_GET_AFFECTED_PR="PR_kwDOIMytpc5AqEME"
CURRENT_GET_AFFECTED_PR=$(./src/scripts/get-affected-pr.sh)

if [ $EXPECTED_GET_AFFECTED_PR != $CURRENT_GET_AFFECTED_PR ]; then
    echo "ERROR: get-affected-pr.sh"
    echo "EXPECTED: ${EXPECTED_GET_AFFECTED_PR}"
    echo "CURRENT: ${CURRENT_GET_AFFECTED_PR}"
else
    echo "GOOD: get-affected-pr.sh"
fi