#!/bin/bash
set -e

git clone https://github.com/bulutonem/MQTT-Explorer.git /app
cd /app
git checkout travis-ui-tests

yarn
yarn build

yarn ui-test
yarn upload-video-artifacts
