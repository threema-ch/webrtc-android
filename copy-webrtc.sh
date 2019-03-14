#!/bin/bash

SRC=~/Projects/webrtc-build-docker/out
DST=libs

echo "Copying..."

cp $SRC/libwebrtc.jar $DST/
cp $SRC/arm/libjingle_peerconnection_so.so $DST/armeabi-v7a/libjingle_peerconnection_so.so
cp $SRC/arm64/libjingle_peerconnection_so.so $DST/arm64-v8a/libjingle_peerconnection_so.so
cp $SRC/x86/libjingle_peerconnection_so.so $DST/x86/libjingle_peerconnection_so.so
cp $SRC/x64/libjingle_peerconnection_so.so $DST/x86_64/libjingle_peerconnection_so.so

echo "Done."
