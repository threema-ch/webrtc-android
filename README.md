# WebRTC Build for Android

[![License](https://img.shields.io/badge/license-MIT%20%2F%20Apache%202.0-blue.svg)](https://github.com/threema-ch/webrtc-android)

This is a WebRTC build with Java bindings packaged for Android.

> :warning: This build of WebRTC contains patches specific to Threema. We offer
> no support for this package outside of Threema.

## Installing

This package is available on Maven Central (starting with version 91.0.1). It
includes the WebRTC PeerConnection build for ARM and x86, both 32 and 64 bit
builds.

Gradle:

```groovy
compile 'ch.threema:webrtc-android:91.0.1'
```

Maven:

```xml
<dependency>
  <groupId>ch.threema</groupId>
  <artifactId>webrtc-android</artifactId>
  <version>91.0.1</version>
  <type>pom</type>
</dependency>
```


## Target Commits

These are the target commits for the releases:

- v91.0.1 [`3e0c60ba4ef28a9f26fe991e5eec3150402c7dd3`](https://chromium.googlesource.com/external/webrtc/+/3e0c60ba4ef28a9f26fe991e5eec3150402c7dd3)
- v91.0.0 [`3e0c60ba4ef28a9f26fe991e5eec3150402c7dd3`](https://chromium.googlesource.com/external/webrtc/+/3e0c60ba4ef28a9f26fe991e5eec3150402c7dd3)
- v84.2.1 [`963cc1ef1336b52ca27742beb28bfbc211ed54d0`](https://chromium.googlesource.com/external/webrtc/+/963cc1ef1336b52ca27742beb28bfbc211ed54d0)
- v84.2.0 [`963cc1ef1336b52ca27742beb28bfbc211ed54d0`](https://chromium.googlesource.com/external/webrtc/+/963cc1ef1336b52ca27742beb28bfbc211ed54d0)
- v84.1.1 [`963cc1ef1336b52ca27742beb28bfbc211ed54d0`](https://chromium.googlesource.com/external/webrtc/+/963cc1ef1336b52ca27742beb28bfbc211ed54d0)
- v84.1.0 [`a740523c6bb2630114937449cc97b844891cebaf`](https://chromium.googlesource.com/external/webrtc/+/a740523c6bb2630114937449cc97b844891cebaf)
- v84.0.0 [`a740523c6bb2630114937449cc97b844891cebaf`](https://chromium.googlesource.com/external/webrtc/+/a740523c6bb2630114937449cc97b844891cebaf)
- v83.1.1 [`e2ad989961f3de12e2c352521fcfdad6e66b6359`](https://chromium.googlesource.com/external/webrtc/+/e2ad989961f3de12e2c352521fcfdad6e66b6359)
- v83.1.0 [`e2ad989961f3de12e2c352521fcfdad6e66b6359`](https://chromium.googlesource.com/external/webrtc/+/e2ad989961f3de12e2c352521fcfdad6e66b6359)
- v83.0.0 [`e2ad989961f3de12e2c352521fcfdad6e66b6359`](https://chromium.googlesource.com/external/webrtc/+/e2ad989961f3de12e2c352521fcfdad6e66b6359)
- v81.1.0 [`76725a6a631c4f21db1f5560eece2feb78b20aca`](https://chromium.googlesource.com/external/webrtc/+/76725a6a631c4f21db1f5560eece2feb78b20aca)
- v81.0.0 [`64649176f542fb919628e4f2149ccd1946769786`](https://chromium.googlesource.com/external/webrtc/+/64649176f542fb919628e4f2149ccd1946769786)
- v80.0.0 [`7a0e44c1a84fb4ed57a6701cfc8093756c37af6f`](https://chromium.googlesource.com/external/webrtc/+/7a0e44c1a84fb4ed57a6701cfc8093756c37af6f)
- v79.0.0 [`b484ec0082948ae086c2ba4142b4d2bf8bc4dd4b`](https://chromium.googlesource.com/external/webrtc/+/b484ec0082948ae086c2ba4142b4d2bf8bc4dd4b)
- v78.0.0 [`0b2302e5e0418b6716fbc0b3927874fd3a842caf`](https://chromium.googlesource.com/external/webrtc/+/0b2302e5e0418b6716fbc0b3927874fd3a842caf)
- v77.0.0 [`ad73985e75684cb4ac4dadb9d3d86ad0d66612a0`](https://chromium.googlesource.com/external/webrtc/+/ad73985e75684cb4ac4dadb9d3d86ad0d66612a0)
- v76.0.0 [`9863f3d246e2da7a2e1f42bbc5757f6af5ec5682`](https://chromium.googlesource.com/external/webrtc/+/9863f3d246e2da7a2e1f42bbc5757f6af5ec5682)

The builds are created using [webrtc-build-docker](https://github.com/threema-ch/webrtc-build-docker).


## Patches / Build config

**v91.0.1** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

Like v91.0.0, but packaging was upgraded to Gradle 6.8 and the maven-publish plugin.
Starting with this release, the library will only be published to Maven Central.

**v91.0.0** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

     5162 2021-04-09 13:22 patches/disable-dtmf-and-comfort-noise.patch
    15479 2021-04-09 13:00 patches/disable-unused-audio-codecs.patch
      815 2021-04-09 13:00 patches/dont-leak-video-orientation.patch
      743 2021-04-09 13:00 patches/dtls-cipher-suites.patch
      818 2021-04-09 13:00 patches/enable-cbr-by-default.patch
     8831 2021-04-09 13:00 patches/expose-crypto-option-aes-128-sha1-80.patch
     3628 2021-04-09 13:00 patches/expose-video-capturer-state.patch
    49010 2021-04-09 13:00 patches/fix-rtp-header-extension-encryption.patch
     1750 2021-04-09 13:00 patches/force-dtls-1_2.patch
     2439 2021-04-09 13:00 patches/only-resolve-uuid-mdns-hostnames.patch
     2615 2021-04-09 13:00 patches/srtp-cipher-suites.patch

**v84.2.1** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

Like v84.2.0, but released to Maven Central for easier backwards compatibility.

**v84.2.0** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

Like v84.1.0, but with the following additional patch:

    3636 Nov 10 16:37 patches/expose-video-capturer-state.patch

**v84.1.1** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

Like v84.1.0, but based on commit `963cc1ef1336b52ca27742beb28bfbc211ed54d0`.

**v84.1.0** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

Like v84.0.0, but with the following additional patch:

    12394 Jun 22 15:23 patches/fix-data-channel-message-integrity.patch

**v84.0.0** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

     3603 May 26 13:53 patches/disable-dtmf-and-comfort-noise.patch
    15479 May 26 13:53 patches/disable-unused-audio-codecs.patch
      815 May 26 13:53 patches/dont-leak-video-orientation.patch
      743 May  7 15:55 patches/dtls-cipher-suites.patch
      818 May 26 13:53 patches/enable-cbr-by-default.patch
     8831 Jun 15 15:18 patches/expose-crypto-option-aes-128-sha1-80.patch
     4718 Jun 15 15:17 patches/expose-offer-extmap-allow-mixed.patch
    34276 May 26 13:53 patches/fix-rtp-header-extension-encryption.patch
     1750 May 26 13:53 patches/force-dtls-1_2.patch
      614 May 26 16:02 patches/libsrtp-two-byte-rtp-header-extension-crypto.patch
     2439 May 26 13:53 patches/only-resolve-uuid-mdns-hostnames.patch
     2615 May 28 10:26 patches/srtp-cipher-suites.patch

**v83.1.1** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

    3.6K May 26 13:53 patches/disable-dtmf-and-comfort-noise.patch
     16K May 26 13:53 patches/disable-unused-audio-codecs.patch
     815 May 26 13:53 patches/dont-leak-video-orientation.patch
     743 May  7 15:55 patches/dtls-cipher-suites.patch
     818 May 26 13:53 patches/enable-cbr-by-default.patch
    5.0K May  7 15:55 patches/expose-crypto-option-aes-128-sha1-80.patch
    2.3K May  7 15:55 patches/expose-offer-extmap-allow-mixed.patch
     34K May 26 13:53 patches/fix-rtp-header-extension-encryption.patch
    1.8K May 26 13:53 patches/force-dtls-1_2.patch
     614 May 26 16:02 patches/libsrtp-two-byte-rtp-header-extension-crypto.patch
     864 May 26 15:39 patches/objc-rtcstats-export.patch
    2.4K May 26 13:53 patches/only-resolve-uuid-mdns-hostnames.patch
    2.6K May 28 10:26 patches/srtp-cipher-suites.patch

**v83.1.0** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`):

    3.6K May 26 13:53 patches/disable-dtmf-and-comfort-noise.patch
     16K May 26 13:53 patches/disable-unused-audio-codecs.patch
     815 May 26 13:53 patches/dont-leak-video-orientation.patch
     743 May  7 15:55 patches/dtls-cipher-suites.patch
     818 May 26 13:53 patches/enable-cbr-by-default.patch
    5.0K May  7 15:55 patches/expose-crypto-option-aes-128-sha1-80.patch
    2.3K May  7 15:55 patches/expose-offer-extmap-allow-mixed.patch
     34K May 26 13:53 patches/fix-rtp-header-extension-encryption.patch
    1.8K May 26 13:53 patches/force-dtls-1_2.patch
     614 May 26 16:02 patches/libsrtp-two-byte-rtp-header-extension-crypto.patch
     864 May 26 15:39 patches/objc-rtcstats-export.patch
    2.4K May 26 13:53 patches/only-resolve-uuid-mdns-hostnames.patch
     817 May 13 10:23 patches/srtp-cipher-suites.patch

**v83.0.0** (`WEBRTC_COMPILE_ARGS: symbol_level=1`)

- `dtls-cipher-suites.patch`
- `expose-crypto-option-aes-128-sha1-80.patch`
- `expose-offer-extmap-allow-mixed.patch`
- `srtp-cipher-suites.patch`

**v81.1.0** (`WEBRTC_COMPILE_ARGS: symbol_level=1 enable_libaom=false`)

    12392 Jun 23 09:01 patches/fix-data-channel-message-integrity.patch
     8201 Jun 23 09:01 patches/fix-sctp-pointer-leak.patch


## Signatures

Releases to Maven Central are signed with the following PGP key:

    pub   rsa4096 2016-09-06 [SC] [expires: 2026-09-04]
          E7AD D991 4E26 0E8B 35DF  B506 65FD E935 573A CDA6
    uid           Threema Signing Key <dev@threema.ch>


## Local testing

Create a local publication (usually at `$HOME/.m2/repository/`):

    ./gradlew publishToMavenLocal

Include it in your project like this:

    repositories {
        ...
        mavenLocal()
    }


## License

    Copyright (c) 2019-2021 Threema GmbH

    Licensed under the Apache License, Version 2.0, <see LICENSE-APACHE file>
    or the MIT license <see LICENSE-MIT file>, at your option. This file may not be
    copied, modified, or distributed except according to those terms.
