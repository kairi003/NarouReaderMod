rd /s /q tmp
md tmp

call apktool.bat decode -f -o tmp\original original.apk

rd /s /q tmp\original\smali_classes2\okhttp3
rd /s /q tmp\original\smali_classes2\org\jsoup
xcopy /e /i patch\smali\* tmp\original\smali_classes2\

patch.exe tmp\original\smali_classes2\com\tscsoft\naroureader\utils\UpdateManager.smali < patch\UpdateManager.smali.diff

call apktool.bat build -f -o tmp\mod-unaligned.apk tmp\original

call zipalign.bat -f -v 4 tmp\mod-unaligned.apk tmp\mod-unsigned.apk

call apksigner.bat sign --ks .keystore -v --v2-signing-enabled true --ks-key-alias narou-mod --out narou-mod.apk tmp\mod-unsigned.apk
