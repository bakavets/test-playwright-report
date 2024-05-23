#!/bin/bash
source /root/.nvm/nvm.sh
echo "[INFO] Test Suite name ${3}";
npx playwright --version
npx playwright test --shard=${1}/${2}
