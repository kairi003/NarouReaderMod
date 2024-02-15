#!/bin/bash

set -o errexit

rm -rf tmp
mkdir tmp

apktool decode -f -o tmp/dec original.apk

# overwite smali files
rm -rf tmp/dec/smali_classes2/okhttp3 \
        tmp/dec/smali_classes2/org/jsoup
cp -r patches/smali/* tmp/dec/smali_classes2/

# apply patches
patch -u -p0 < patches/fix-update-100.diff
patch -u -p0 < patches/min-index-update.diff
patch -u -p0 < patches/version.diff

# change package name to com.tscsoft.naroureader_mod_mod_mod
DIR=tmp/dec bash patches/rename.sh

apktool build -f -o tmp/mod-unaligned.apk tmp/dec

zipalign -f -v 4 tmp/mod-unaligned.apk tmp/mod-unsigned.apk

apksigner sign --ks .keystore -v --v2-signing-enabled true --ks-key-alias narou-mod --out narou-mod.apk tmp/mod-unsigned.apk
