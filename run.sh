#!/bin/bash

set -e

echo Cleaning up
rm -rf tmp
mkdir tmp

echo Decoding original APK
apktool decode -f -o tmp/dec original.apk

# overwite smali files
echo Overwriting smali files
rm -rf tmp/dec/smali_classes2/okhttp3 \
        tmp/dec/smali_classes2/org/jsoup
cp -r patches/smali/* tmp/dec/smali_classes2/

# apply patches
echo Applying patches
patch -u -p0 < patches/fix-update-100.diff
patch -u -p0 < patches/min-index-update.diff
patch -u -p0 < patches/fix-last-page-evaluation.diff
patch -u -p0 < patches/switch-page-view.diff
patch -u -p0 < patches/fix-min-update-chapter.diff
patch -u -p0 < patches/fix-css-classname.diff
patch -u -p0 < patches/version.diff

# change package name to com.tscsoft.naroureader_mod_mod_mod
echo Changing package name
DIR=tmp/dec bash patches/rename.sh

# build APK
echo Building APK
apktool build -f -o tmp/mod-unaligned.apk tmp/dec

# sign APK
echo Signing APK
zipalign -f -v 4 tmp/mod-unaligned.apk tmp/mod-unsigned.apk

KEY_PASS=${KEY_PASS:=stdin}
apksigner sign --ks .keystore -v --v2-signing-enabled true --ks-key-alias narou-mod --out narou-mod.apk --ks-pass "$KEY_PASS" tmp/mod-unsigned.apk
