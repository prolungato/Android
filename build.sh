set -euxo pipefail

git clone --recurse-submodules --depth 1 -b main https://github.com/cryptomator/android
cd android
./gradlew assemblePlaystoreDebug
# TODO
find ./ -type f -name "*.apk"
