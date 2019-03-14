# WebRTC Build for Android

[![License](https://img.shields.io/badge/license-MIT%20%2F%20Apache%202.0-blue.svg)](https://github.com/threema-ch/webrtc-android)

This is a WebRTC build with Java bindings packaged for Android.

The builds are created using [webrtc-build-docker](https://github.com/threema-ch/webrtc-build-docker).


## Installing

The package is available [on
Bintray](https://bintray.com/threema/maven/webrtc-android/). It includes the
WebRTC PeerConnection build for ARM and x86, both 32 and 64 bit builds.

Gradle:

```groovy
compile 'ch.threema.webrtc:webrtc-android:72.0.0'
```

Maven:

```xml
<dependency>
  <groupId>ch.threema.webrtc</groupId>
  <artifactId>webrtc-android</artifactId>
  <version>72.0.0/version>
  <type>pom</type>
</dependency>
```


## Hashes

These are the SHA256 hashes for the published releases of this project:

- v72.0.0 `30da1a431dd2b97b3d8492dbdfeeaf43c30e2d177e3782c098ab9d0c54d895df`


## License

    Copyright (c) 2019 Threema GmbH

    Licensed under the Apache License, Version 2.0, <see LICENSE-APACHE file>
    or the MIT license <see LICENSE-MIT file>, at your option. This file may not be
    copied, modified, or distributed except according to those terms.
