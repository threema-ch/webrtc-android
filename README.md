# WebRTC Build for Android

[![License](https://img.shields.io/badge/license-MIT%20%2F%20Apache%202.0-blue.svg)](https://github.com/threema-ch/webrtc-android)

This is a WebRTC build with Java bindings packaged for Android.

**NOTE: Threema specific patches may have been applied in these builds!**


## Installing

The package is available [on
Bintray](https://bintray.com/threema/maven/webrtc-android/). It includes the
WebRTC PeerConnection build for ARM and x86, both 32 and 64 bit builds.

> :warning: **Note:** Version 91 will probably be the last version uploaded to Bintray.
> Future versions will be uploaded to Maven Central only!

Gradle:

```groovy
compile 'ch.threema.webrtc:webrtc-android:91.0.0'
```

Maven:

```xml
<dependency>
  <groupId>ch.threema.webrtc</groupId>
  <artifactId>webrtc-android</artifactId>
  <version>91.0.0</version>
  <type>pom</type>
</dependency>
```


## Target Commits

These are the target commits for the releases:

- v91.0.0 [`3e0c60ba4ef28a9f26fe991e5eec3150402c7dd3`](https://chromium.googlesource.com/external/webrtc/+/3e0c60ba4ef28a9f26fe991e5eec3150402c7dd3)
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


## Hashes

These are the SHA256 hashes for the published releases of this project:

- v91.0.0 `cbb3ed1e4d93dd294eccd7f84a80fdd5751061258c881c76455d9c0bf1be133f`
- v84.2.0 `a66dcfa6b27f51d396b6a458ffca97ec463c820889e2e619a763976cacb0aa64`
- v84.1.1 `23c96340d055b5bd27503f6ebad831f0222689c4cc8816aa343e8f3110566419`
- v84.1.0 `d514bd6b770efe60c8de390c63aa893742376e32f67f692305b424e534d30036`
- v84.0.0 `8a0b44347669ea46c61edb783e2f04195fb8a6a36d95751947b218f7275d45eb`
- v83.1.1 `c5a14afe7a5edcade0bccb53c1308a1b0309422b6cca716822dc98fc76a0e779`
- v83.1.0 `4b05eabe62470bf84adcf8b5a1eb8f99e71b0c3ecff29646626e491ebd22437d`
- v83.0.0 `076b3ddde70690db31b42268b66a3c87f2be47aa11108c86a36baa2f44bc67bb`
- v81.1.0 `b4315cad78f5ce6ff79bc1091cd44361fbe90c1d32edc5f25b426ddfa261bea8`
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


## Local testing

Create a local release to `/tmp/maven/`:

    ./gradlew uploadArchives

Include it in your project like this:

    repositories {
        ...
        maven { url "/tmp/maven" }
    }


## License

    Copyright (c) 2019-2021 Threema GmbH

    Licensed under the Apache License, Version 2.0, <see LICENSE-APACHE file>
    or the MIT license <see LICENSE-MIT file>, at your option. This file may not be
    copied, modified, or distributed except according to those terms.
