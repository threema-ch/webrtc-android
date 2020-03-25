# WebRTC Build for Android

[![License](https://img.shields.io/badge/license-MIT%20%2F%20Apache%202.0-blue.svg)](https://github.com/threema-ch/webrtc-android)

This is a WebRTC build with Java bindings packaged for Android.


## Installing

The package is available [on
Bintray](https://bintray.com/threema/maven/webrtc-android/). It includes the
WebRTC PeerConnection build for ARM and x86, both 32 and 64 bit builds.

Gradle:

```groovy
compile 'ch.threema.webrtc:webrtc-android:81.0.0'
```

Maven:

```xml
<dependency>
  <groupId>ch.threema.webrtc</groupId>
  <artifactId>webrtc-android</artifactId>
  <version>81.0.0</version>
  <type>pom</type>
</dependency>
```


## Target Commits

These are the target commits for the releases:

- v81.0.0 [`64649176f542fb919628e4f2149ccd1946769786`](https://chromium.googlesource.com/external/webrtc/+/64649176f542fb919628e4f2149ccd1946769786)
- v80.0.0 [`7a0e44c1a84fb4ed57a6701cfc8093756c37af6f`](https://chromium.googlesource.com/external/webrtc/+/7a0e44c1a84fb4ed57a6701cfc8093756c37af6f)
- v79.0.0 [`b484ec0082948ae086c2ba4142b4d2bf8bc4dd4b`](https://chromium.googlesource.com/external/webrtc/+/b484ec0082948ae086c2ba4142b4d2bf8bc4dd4b)
- v78.0.0 [`0b2302e5e0418b6716fbc0b3927874fd3a842caf`](https://chromium.googlesource.com/external/webrtc/+/0b2302e5e0418b6716fbc0b3927874fd3a842caf)
- v77.0.0 [`ad73985e75684cb4ac4dadb9d3d86ad0d66612a0`](https://chromium.googlesource.com/external/webrtc/+/ad73985e75684cb4ac4dadb9d3d86ad0d66612a0)
- v76.0.0 [`9863f3d246e2da7a2e1f42bbc5757f6af5ec5682`](https://chromium.googlesource.com/external/webrtc/+/9863f3d246e2da7a2e1f42bbc5757f6af5ec5682)

The builds are created using [webrtc-build-docker](https://github.com/threema-ch/webrtc-build-docker).


## Hashes

These are the SHA256 hashes for the published releases of this project:

- v81.0.0 `d46c81d0ecda1cc8fe74a89a905171fb0d0c7a95c632f1612a3aaa874ca0b0a6`
- v80.0.0 `bb7469f49d94492b38e1df47389a45f3d9d1e419e181182ab246cde3130ce285`
- v79.0.0 `6ec0f358ecd676ca53f433a4b7c1b6797fc406adfbdc6d4817d912656013966e`
- v78.0.0 `2a54022e2d8d69ce33897fddb45cec74c87413eefeebc48f81eaf548b649d200`
- v77.0.0 `24797af64d17fd195f20b264029b14ee5024b4b6fdee27bd5363bdee79a868af`
- v76.0.0 `7164372eb184e50081ab3139edf4e66c3aaa8b017b44b8fd42ef8e9f372f85a5`
- v75.0.0 `9bdf02510ab8b30506557425985584441ee712ea435db4c6cd8d11116edba5d9`
- v74.0.0 `0e61dcde1e0242db69b7798a705126c638170deac06c4dc927beea2922be1768`
- v73.0.0 `92a10a82cb18331e863ca910c333420678e6ec0022448f2e67354845c440e0dd`
- v72.0.1 `f23e9c382457fee661d232a8efb22fc4cfb90436a98785b2991af412faeaa99f`
- v72.0.0 `30da1a431dd2b97b3d8492dbdfeeaf43c30e2d177e3782c098ab9d0c54d895df`


## License

    Copyright (c) 2019-2020 Threema GmbH

    Licensed under the Apache License, Version 2.0, <see LICENSE-APACHE file>
    or the MIT license <see LICENSE-MIT file>, at your option. This file may not be
    copied, modified, or distributed except according to those terms.
