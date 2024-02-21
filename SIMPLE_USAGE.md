# なろうリーダ改造パッチの適用方法(簡易版)

## 1. なろうリーダ v1.35.6 のapkを入手
- APKPure からのダウンロードを推奨
- 非公式ストアですが、Androidアプリは公式から改竄がされていないことが署名によって確認できます
- バージョンが **1.35.6** であることを確認してください (APKPureは最新版以外もダウンロードできます)
- アプリが見つからない場合は `com.tscsoft.naroureader` で検索してください

## 2. パッチファイルのダウンロード
- [リリースページ](https://github.com/kairi003/NarouReaderMod/releases) から `narou-mod-vXXXX.bsdiff` をダウンロードしてください
- 各リリース下部の **Assets** からダウンロードできます
- 多分最新版を選ぶといいと思います

## 3. パッチの適用
- [bsdiff-wasm](https://kairi003.github.io/bsdiff-wasm/) を利用するのが簡単です
- ブラウザで動作しますがサーバーにファイルをアップロードはしません
- **bspatch** の **OldFile** になろうリーダのapkを、**NewFile** に `narou-mod.bsdiff` を選択し、**bspatch** ボタンを押すとパッチが適用されます

## 4. インストール
- パッチが適用されたapkを端末に転送し、インストールしてください
- 転送方法はクラウド経由やUSB経由など
