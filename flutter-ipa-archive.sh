#!/usr/bin/env bash
# fail if any commands fails
set -e
# debug log
set -x

cd build/ios/iphoneos
mkdir -p deploy
mv Runner.app deploy/
zip -ry Runner.ipa deploy

envman add --key FLUTTER_IPA_PATH --value "${BITRISE_SOURCE_DIR}/build/ios/iphoneos/Runner.ipa"

cp ${BITRISE_SOURCE_DIR}/build/ios/iphoneos/Runner.ipa $BITRISE_DEPLOY_DIR