#!/bin/bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path-to-webrtc-build>"
    exit 1
fi

SRC=${1%/}
DST=libs
ARCHS=("arm:armeabi-v7a" "arm64:arm64-v8a" "x86:x86" "x64:x86_64")

echo "Copying..."
cp -v "$SRC/libwebrtc.jar" "$DST/"
for arch in "${ARCHS[@]}"; do
    IFS=: read -ra parts <<< "$arch"
    cp -v "$SRC/${parts[0]}/libjingle_peerconnection_so.so" "$DST/${parts[1]}/libjingle_peerconnection_so.so"
done

echo "Done."
