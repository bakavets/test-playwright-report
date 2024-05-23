#!/bin/bash
echo "[INFO] Setting up prerequisites";
source /root/.nvm/nvm.sh
nvm install
nvm use
npm i
npm ci
npx playwright install --with-deps
npx playwright --version
