# jekyll-theme-my-standard
ただの Jekyll のテーマです。

## README
- [English](./EN.md)
- [__日本語__](./JP.md)

## インストール
以下を実行してください。:

    $ git clone https://github.com/accup/jekyll-theme-my-standard.git <website-name>
    $ bundle


## 使い方
### YAML Front Matter について
レイアウトを `default` にしている場合、次の設定が利用できます。

#### Viewport の設定
```yaml
viewport:
  width: 640          # width を指定
  height: 480         # height を指定
  initial-scale: 2    # initial-scale を指定
  minimum-scale: 0.5  # minimum-scale を指定
  maximum-scale: 4    # maximum-scale を指定
```

#### CSS の追加
```yaml
css:
  - style1.css          # 通常の利用法
  - href: style2.css    # 敢えて href で指定する
  - src: style3.css     # src で指定する（href と同じ）
```

#### JS の追加
```yaml
js:
  - script1.js          # 通常の利用法
  - defer: script2.js   # defer で読み込む
  - async: script3.js   # async で読み込む
  - src: script4.js     # 敢えて src で指定する
  - href: script5.js    # href で指定する（src と同じ）
```

#### アイコンの追加
キーとしてサイズを指定してアイコンを追加します。また、アイコンの拡張子に応じてMIMEタイプが適用されます（_data/mime.yml に定義されているものに限る）。
```yaml
icon:
  default: favicon.ico  # sizes 指定なしのアイコン
  32x32: icon32.png     # sizes="32x32" のアイコン
  64x64: icon64.png     # sizes="64x64" のアイコン
  120x120:              # sizes="120x120" のアイコンを詳しく指定
    href: icon120.png
    type: image/png
```

もし、同じサイズに対して複数のアイコンを指定したい場合は、以下のような方法で記述できます（`smartphone-icon`, `smartphone-startup-image`, `windows-tile` の設定でも同様の方法が利用できます）。
```yaml
icon:
  - [ default, favicon.ico ]
  - [ default, favicon.png ]
  - [ 32x32, icon32.png ]
  - [ 32x32, icon32-2.png ]
```

#### スマートフォン向けアイコンの追加
通常のアイコンと同じ方法で指定できます。アイコンのサイズとして、_data/smartphone.yml に定義されているエイリアスを利用できます。
```yaml
smartphone-icon:
  default: icon.png     # sizes 指定なしのアイコン
  32x32: icon32.png     # 通常のアイコンと同様の指定方法を利用可能
  iphone: icon-iphone.png   # iphone エイリアスを指定する
  iphone-settings: icon-iphone-settings.png # iphone-settings エイリアス
```

#### Windows タイルの追加
```yaml
windows-tile:
  small: tile-small.png   # 小タイル
  medium: tile-medium.png # 中タイル
  wide: tile-wide.png     # ワイドタイル
  large: tile.large.png   # 大タイル
```

#### スマートフォン向けスタートアップ画像（スプラッシュ画像）の追加
通常のアイコンと同じ方法で指定できます。
```yaml
smartphone-startup-image:
  default: startup.png
  iphone-se: startup-iphone-se.png
  iphone-6: startup-iphone-6.png
  iphone-xs: startup-iphone-xs.png
```

#### スマートフォン向けの設定
```yaml
smartphone-mode: true   # ホーム画面から開くと全画面モードで開くようになる
smartphone-status-bar: red  # ステータスバーの色を指定
smartphone-status-bar: black-translucent    # ステータスバーをシームレスにする
smartphone-title: ほげふが  # ホーム画面上でのアイコンのタイトルを指定
```

#### その他の設定
```yaml
format-telephone: true  # 数値の並びを電話番号のリンクにする効果を認める（Falsyな値を指定すると無効にする。デフォルトで無効化される。）
```

#### その他の link の追加
```yaml
link:
  - rel: stylesheet
    href: style1.css
    type: text/css
  - rel: icon
    href: favicon.ico
    type: image/vnd.microsoft.icon
```


### 各ファイル・ディレクトリについて

|パス|内容|
|:--|:--|
|_data/         |追加のデータファイルを配置するディレクトリ
|_data/mime.yml |テキスト・画像・音声などのファイルの拡張子からMIMEタイプを得るための簡易的なデータファイル
|_data/device.yml|スマートフォンアイコンなどのサイズ指定を行うときのエイリアスを定義するデータファイル
|_includes/     |includeタグで利用するファイルを配置するディレクトリ
|_includes/settings-standard.html|ほとんどのページで利用されるであろう基本的なページ設定(meta, link)のインクルードファイル
|_includes/settings-css.html|CSSインポートを簡易化するためのインクルードファイル
|_includes/settings-js.html|JSインポートを簡易化するためのインクルードファイル
|_includes/settings-icon.html|アイコンの設定を簡易化するためのインクルードファイル
|_includes/settings-smartphone.html|スマートフォン向けの設定を簡易化するためのインクルードファイル
|_includes/settings-link.html|`link` タグの追加を簡易化するためのインクルードファイル
|_layouts/      |レイアウト用のファイルを配置するディレクトリ
|_layouts/default.html|デフォルトのレイアウト
|_sass/         |importするSASSファイルを配置するディレクトリ
|_sass/_variables.scss|SASSの基本的な定数を定義するファイル
|_site/         |デフォルトのビルドディレクトリ
|.sass-cache/   |SASSのキャッシュが配置されるディレクトリ
|_config.yml    |サイトの設定ファイル
|.gitignore     |gitの除外対象設定
|404.html       |404 Not Found の際のページ
|Gemfile        |利用したいgemの一覧
|Gemfile.lock   |現在利用しているgemの一覧（ `bundle update` で更新されうる。GemFileを編集した場合は `bundle install` でも更新されうる。）
|index.md       |サイトのトップページ
|README.md      |サイトの説明に利用してください
|

