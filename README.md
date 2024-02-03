# NarouReaderMod
なろうリーダで100話以降の目次を取得するための改造パッチ

# 注意
- 本パッチは非公式のものであり、なろうリーダの開発者とは無関係です。不具合があっても本家開発者に問い合わせないでください。
- 本パッチを利用することでアプリが正常に動作しなくなる可能性があります。自己責任でご利用ください。
- 100話ごとで目次を取得するため、話数の多い小説の更新確認は遅くなります。
    - 一定以上更新に時間がかかる場合は目次の取得が中断されることがあります。その場合は登録小説を更新除外設定するなどで対処してください。
- 本パッチを適用したなろうリーダはGoogle Playにてアップデートされなくなります。
    - アップデートを行う場合はアプリをアンインストールし、公式のものを再インストールしてください。
- パッチのソースはsrcディレクトリのAndroid Studioプロジェクトです。
    - apkをビルドしてapktoolでデコードしたものからパッチをを作成しています。


# バイナリパッチ
- ツールの用意や署名が面倒な場合はバイナリパッチを利用してください。
- できればapktoolを使ってソースパッチを適用することを推奨します。
- バイナリパッチはAPKPureのなろうリーダv1.35の単一apkにのみ適用可能です。

## 必要なもの
- なろうリーダv1.35 (APKPure
- bsdiff/bspatch
  - Windows : https://github.com/cnSchwarzer/bsdiff-win/releases/
  - Linux : `sudo apt install bsdiff`
  - Mac : `brew install bsdiff`
- narou-mod.bsdiff
  - https://github.com/kairi003/NarouReaderMod/releases からダウンロード

## 適用方法
1. なろうリーダのapkを`original.apk`という名前で`narou-mod.bsdiff`と同じディレクトリに配置
   - windowsの場合は`bspatch.exe`も同じディレクトリに配置
2. コマンドラインやターミナルを開き以下のコマンドで`narou-mod.bsdiff`を適用
```bash
bspatch original.apk narou-mod.apk narou-mod.bsdiff
```

# ソースパッチ
## パッチ適用動作環境
- Linux推奨
- Windowsでも動作するがWSL推奨
- Macは未検証

## 必要なツール
Ubuntuの場合、全てaptでインストール可能
- JDK : https://adoptopenjdk.net/
- apktool : https://ibotpeaches.github.io/Apktool/
- patch : Windowsの場合Git for Windows等に含まれる
- keytool : JDKに含まれる
- apksigner : Android SDKに含まれる
- zipalign : Android SDKに含まれる

## 使い方
署名やビルドが面倒な場合はバイナリパッチを利用してください。
1. なろうリーダのapkを入手
   - デバイス中のapkはsplit apksになっているため、APKPureなどのサイトからダウンロード推奨
   - セキュリティ的に不安な場合はbase.apkと同じディレクトリの全てのapkファイルをadbやSAIで抽出し、単一apkの代わりにbase.apkにパッチを当てる
     - この場合 `adb install-multiple` でインストール可能だが全てのapkに同一の署名が必要
2. なろうリーダのapkを`original.apk`という名前で`run.sh`と同じディレクトリに配置
3. 後述のコマンドでキーストアを作成
4. `run.sh` または `run.bat` を実行
    - apktoolによるデコード、パッチの適用、ビルド、zipalign、署名を行う
5. `narou-mod.apk` が生成されるので、これを端末にインストール
    - 自己署名のため、インストール時にセキュリティ警告が表示される

## キーストアの作成
以下のコマンドでキーストアを作成する。
所在地などはデフォルト(Unkown)で問題ない。
パスワードは署名時に必要。
```
keytool -genkeypair -v -keystore .keystore -alias narou-mod -keyalg RSA -keysize 2048 -validity 100000
```

# パッチによる変更内容
### com.tscsoft.naroureader.utils.Modding.smali
- 目次ページを全て読み込むための関数 `patchNovelHtml` を追加

### com.tscsoft.naroureader.utils.UpdateManager.smali.diff
- `patchNovelHtml` を呼び出すように変更

### org.jsoup
- 最適化でメソッドが削除されているため最適化を無効化したsmaliに差し替え

### okhttp3
- SSL通信でクラッシュする不具合が修正されているためバージョンアップ
