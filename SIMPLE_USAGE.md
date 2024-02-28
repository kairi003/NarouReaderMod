# なろうリーダ改造パッチの適用方法(簡易版)

- **推奨: [Google Colaboratoryにノートブック](https://colab.research.google.com/drive/1HApG6lMTqxDtJarBjVyKPYDVLKdnXKYt?usp=sharing)を作成したため、そちらでソースパッチを行うこともできます**
  -  ノートブックは [NarouReaderMod.ipynb](./NarouReaderMod.ipynb) と同じものなので、こちらをColaboratoryにアップロードしても使えます

## 1. なろうリーダ v1.35.6 の単一apkを入手
- APKPure からダウンロード
- 非公式ストアですが、Androidアプリは公式から改竄がされていないことが署名によって確認できます
- バージョンが **1.35.6** であることを確認してください (APKPureは最新版以外もダウンロードできます)
- アプリが見つからない場合は `com.tscsoft.naroureader` で検索してください
- ファイルハッシュが以下と一致することを確認してください
  - MD5: `625ac2c139489a395b81cc2f84772bc8`
  - SHA1: `e84d872c3c7f026543ff610d343d0a9353b02655`
  - SHA256: `5fc140ef920c1ffc91b8ad5411b43e3fe80e647db045326ab98e7ec7af2fc635`

## 2. パッチファイルのダウンロード
- [リリースページ](https://github.com/kairi003/NarouReaderMod/releases) から `narou-mod-vXXXX.bsdiff` をダウンロードしてください
- 各リリース下部の **Assets** からダウンロードできます
- 多分最新版を選ぶといいと思います

## 3. パッチの適用
- [bsdiff-wasm](https://kairi003.github.io/bsdiff-wasm/) を利用するのが簡単です
- ブラウザで動作しますがサーバーにファイルをアップロードはしません
- **bspatch** の **OldFile** になろうリーダのapkを、**PatchFile** に `narou-mod.bsdiff` を選択し、**run** ボタンを押すとパッチが適用されます

## 4. インストール
- パッチが適用されたapkを端末に転送し、インストールしてください
- 転送方法はクラウド経由やUSB経由など
