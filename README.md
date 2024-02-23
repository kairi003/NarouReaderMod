# NarouReaderMod
なろうリーダで100話以降の目次を取得するための改造パッチ

パッチsmaliのソースプロジェクトは[こちら](https://github.com/kairi003/NarouReaderMod-source)

**手順が難しいと感じた場合は [なろうリーダ改造パッチの適用方法(簡易版)](./SIMPLE_USAGE.md) を参照**

# 注意
- 本パッチは非公式のものであり、なろうリーダの開発者とは無関係です。不具合があっても本家開発者に問い合わせないでください。
- 本パッチを利用することでアプリが正常に動作しなくなる可能性があります。自己責任でご利用ください。
- 100話ごとで目次を取得するため、話数の多い小説の更新確認は遅くなります。
    - 一定以上更新に時間がかかる場合は目次の取得が中断されることがあります。その場合は登録小説を更新除外設定するなどで対処してください。
- **ver0.2.0以降**: 設定の「低負荷更新」を有効にすることで、現在取得している話数が含まれる目次ページ以降のみを取得するようになります。
    - 実験的機能です。実用に耐えない場合は無効にしてください。
    - これにより更新確認が低負荷化、高速化されます。
    - 取得済みの目次ページは改稿等を検知できません。
    - 部分削除や割込み投稿で目次がずれると正常に更新されないことがあります。
    - 強制更新 (または小説キャッシュ削除→強制更新) を行うと全ての目次ページを取得します。
- ~~本パッチを適用したなろうリーダはGoogle Playにてアップデートされなくなります。~~
    - ~~アップデートを行う場合はアプリをアンインストールし、公式のものを再インストールしてください。~~
- **ver0.1.1 以降**: オリジナルとは別のアプリとしてインストールされます。
    - オリジナルとはフルバックアップ/フルリストアによってデータを共有できます。
- APKPureは非公式のapk配布サイトですが、署名が正規のものであれば一般的には安全です。
    - あくまで自己責任なので不安な場合は複数apkを抽出しソースパッチしてください。
### なろうリーダ(オリジナル)の署名ハッシュ
```
SHA1: AD:45:B8:7B:B2:49:E6:EE:51:87:37:CD:23:BC:82:5F:8F:BC:C9:1B
SHA256: FD:F3:16:B3:60:09:7A:63:C9:5E:7A:13:A9:36:B0:38:9E:47:5D:07:27:23:3A:F4:5D:93:90:59:31:49:B0:15
```
## なろうリーダ1.35.6(APKPure)のファイルハッシュ
```
MD5: 625ac2c139489a395b81cc2f84772bc8
SHA1: e84d872c3c7f026543ff610d343d0a9353b02655
SHA256: 5fc140ef920c1ffc91b8ad5411b43e3fe80e647db045326ab98e7ec7af2fc635
```


# バイナリパッチ
- ツールの用意や署名が面倒な場合はバイナリパッチを利用してください。
- できればapktoolを使ってソースパッチを適用することを推奨します。
- バイナリパッチはAPKPureのなろうリーダv1.35.6の単一apkにのみ適用可能です。

## 必要なもの
- なろうリーダv1.35.6 (APKPure
- bsdiff/bspatch
  - **ブラウザ版を作りました**: https://kairi003.github.io/bsdiff-wasm/
    - サーバーにアップロードせずにローカルで動作するので安全です
  - Windows : https://github.com/cnSchwarzer/bsdiff-win/releases/
  - Linux : `sudo apt install bsdiff`
  - Mac : `brew install bsdiff`
- narou-mod.bsdiff
  - https://github.com/kairi003/NarouReaderMod/releases からダウンロード

## 適用方法
### ブラウザでの適用
1. https://kairi003.github.io/bsdiff-wasm/ にアクセス
2. **bspatch** の **OldFile** になろうリーダのapkを、**PatchFile** に `narou-mod.bsdiff` を選択
3. **bspatch** ボタンを押す

### コマンドでの適用
1. なろうリーダのapkを`original.apk`という名前で`narou-mod.bsdiff`と同じディレクトリに配置
   - windowsの場合は`bspatch.exe`も同じディレクトリに配置
2. コマンドラインやターミナルを開き以下のコマンドで`narou-mod.bsdiff`を適用
```bash
bspatch original.apk narou-mod.apk narou-mod.bsdiff
```
1. 署名ハッシュはリリースページに記載されています。改竄されていないことを確認してください。
```bash
keytool -printcert -jarfile narou-mod.apk
```

# ソースパッチ
## パッチ適用動作環境
- Linux(WSL含む)推奨, Mac未検証

## 必要なツール
- JDK : https://adoptopenjdk.net/
- keytool : JDKに含まれる
- apksigner : Android SDKに含まれる
- zipalign : Android SDKに含まれる
- apktool : https://ibotpeaches.github.io/Apktool/
### Ubuntuでのインストール例
```bash
sudo apt update
sudo apt install openjdk-18-jdk-headless apksigner zipalign apktool
```

## 使い方
署名やビルドが面倒な場合はバイナリパッチを利用してください。
1. なろうリーダのapkを入手
   - デバイス中のapkはsplit apksになっているため、APKPureなどのサイトからダウンロード推奨
   - セキュリティ的に不安な場合はbase.apkと同じディレクトリの全てのapkファイルをadbやSAIで抽出し、単一apkの代わりにbase.apkにパッチを当てる
     - この場合 `adb install-multiple` でインストール可能だが全てのapkに同一の署名が必要
2. なろうリーダのapkを`original.apk`という名前で`run.sh`と同じディレクトリに配置
3. 後述のコマンドでキーストアを作成
4. `run.sh` を実行
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
### rename.sh
- パッケージ名を変更 (`com.tscsoft.naroureader` -> `com.tscsoft.naroureader_mod`)
- アプリ名を変更 (`なろうリーダ` -> `なろうリーダ[MOD]`)
- バージョン名を変更 (`+{MOD version}`)を追加
- アイコン色を変更

### com.tscsoft.naroureader_mod_mod.utils.Modding.smali
- 目次ページを全て読み込むための関数 `patchNovelHtml` を追加

### fix-update-100.diff
- `com.tscsoft.naroureader_mod_mod.utils.UpdateManager` で `patchNovelHtml` を呼び出すように変更

### min-index-update.diff
- 各リソース定義に `min_index_update` 設定値関連を追加
- `ListBean` に `workMode`, `prevAllNo` フィールド及びsetter/getterを追加
  - 上記フィールドの処理を`ListBean`と`UpdateManager`に追加

### org.jsoup
- 最適化でメソッドが削除されているためminifyを無効化したsmaliに差し替え

### okhttp3
- SSL通信でクラッシュする不具合が修正されているためバージョンアップ
