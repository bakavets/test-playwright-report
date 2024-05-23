#!/bin/bash

while [ $# -gt 0 ]; do
    if [[ $1 == "--"* ]]; then
        v="${1/--/}"
        declare "$v"="$2"
        shift
    fi
    shift
done

source /root/.nvm/nvm.sh
echo "[INFO] Test Suite name ${testsuite}";
npx playwright --version
npx playwright test --shard=${shard}/${totalshards}
