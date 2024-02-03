#!/bin/bash

rm -rf tmp
mkdir tmp

apktool decode -f -o tmp/original original.apk

rm -rf tmp/original/smali_classes2/okhttp3 \
        tmp/original/smali_classes2/org/jsoup
cp -r patch/smali/* tmp/original/smali_classes2/

patch tmp/original/smali_classes2/com/tscsoft/naroureader/utils/UpdateManager.smali < patch/UpdateManager.smali.diff

apktool build -f -o tmp/mod-unaligned.apk tmp/original

zipalign -f -v 4 tmp/mod-unaligned.apk tmp/mod-unsigned.apk

apksigner sign --ks .keystore -v --v2-signing-enabled true --ks-key-alias narou-mod --out narou-mod.apk tmp/mod-unsigned.apk
