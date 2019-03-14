# Releasing

Set variables:

    export VERSION=X.Y.Z
    export GPG_KEY=E7ADD9914E260E8B35DFB50665FDE935573ACDA6
    export BINTRAY_USER=...
    export BINTRAY_KEY=...

Update version numbers:

    vim -p build.gradle README.md

Build:

    rm -r build
    ./gradlew build

Add hash to README.md:

    sha256sum build/outputs/aar/webrtc-android-release.aar

Add and commit:

    git commit -S${GPG_KEY} -m "Release v${VERSION}"

Publish the library to Bintray:

    ./gradlew bintrayUpload

Tag and push:

    git tag -s -u ${GPG_KEY} v${VERSION} -m "Version ${VERSION}"
    git push && git push --tags

