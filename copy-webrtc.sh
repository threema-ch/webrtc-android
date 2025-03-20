#!/bin/bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path-to-webrtc-build>"
    exit 1
fi

source=${1%/}
destination=./libs
architectures=("arm:armeabi-v7a" "arm64:arm64-v8a" "x86:x86" "x64:x86_64")

echo "Copying..."
mkdir -p "$destination"
cp -v "$source/libwebrtc.jar" "$destination/"
for architecture in "${architectures[@]}"; do
    IFS=: read -ra parts <<< "$architecture"
    mkdir -p "$destination/${parts[1]}"
    cp -v "$source/${parts[0]}/libjingle_peerconnection_so.so" "$destination/${parts[1]}/libjingle_peerconnection_so.so"
done

echo "Done."
