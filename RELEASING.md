# Releasing

Set variables:

    export VERSION=X.Y.Z
    export GPG_KEY=E7ADD9914E260E8B35DFB50665FDE935573ACDA6

Ensure that `ossrhUsername` and `ossrhPassword` are defined in your
`~/.gradle/gradle.properties` file. This **must not** be the OSSRH username but
a generated access token (confusingly also having a username)!

Align SDK versions and bump versions:

    vim -p build.gradle README.md

Build:

    ./gradlew clean build

Add and commit:

    git commit -S${GPG_KEY} -m "Release v${VERSION}"

Publish the library to Sonatype OSS / Maven Central:

    ./gradlew publish

Afterwards, run the magic `curl` command from our password manager to transfer
from the OSSRH Staging API compatibility service to the main Central Publisher
Portal.

Then, log into https://central.sonatype.com/publishing/deployments and hit
_Publish_.

*Note: It may take a while until it is published!*

Tag and push:

    git tag -s -u ${GPG_KEY} v${VERSION} -m "Version ${VERSION}"
    git push && git push --tags
