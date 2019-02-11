# jekyll-theme-my-standard
My standard Jekyll theme.

## README
- [__English__](./EN.md)
- [日本語](./JP.md)

## Installation
Execute below:

    $ git clone https://github.com/accup/jekyll-theme-my-standard.git <website-name>
    $ bundle


## Usage
### About YAML Front Matter
If you use the `default` layout, you can use the settings below.

#### Set the viewport
```yaml
viewport:
  width: 640            # specify `width`
  height: 480           # specify `height`
  initial-scale: 2      # specify `initial-scale`
  minimum-scale: 0.5    # specify `minimum-scale`
  maximum-scale: 4      # specify `maximum-scale`
```

#### Add CSS files
```yaml
css:
  - style1.css          # standard usage
  - href: style2.css    # specifically specify `href`
  - src: style3.css     # you can specify `src` (it's same as `href`).
```

#### Add JS files
```yaml
js:
  - script1.js          # standard usage
  - defer: script2.js   # `defer` loading
  - async: script3.js   # load `async`hronously
  - src: script4.js     # specifically specify src
  - href: script5.js    # you can specify `href` (it's same as `src`).
```

#### Add icons
You can specify YAML hash key as a `sizes` attribute and hash value as a icon path to add any icon. The MIME type is automatically selected from the file extension (only when defined in _data/mime.yml). 
```yaml
icon:
  default: favicon.ico  # not specify `sizes`
  32x32: icon32.png     # specify sizes="32x32"
  64x64: icon64.png     # specify sizes="64x64"
  120x120:              # particularly specify  sizes="120x120"
    href: icon120.png
    type: image/png
```

If you want to specify  many icon `sizes`es, please write like below (you can use this format to specify `smartphone-icon`, `smartphone-startup-image` and `windows-tile`).
```yaml
icon:
  - [ default, favicon.ico ]
  - [ default, favicon.png ]
  - [ 32x32, icon32.png ]
  - [ 32x32, icon32-2.png ]
```

#### Add icons for smartphones
You can specify in the same way as the normal icons. Additionally, you can use the aliases of the sizes which defined in _data/smartphone.yml.
```yaml
smartphone-icon:
  default: icon.png     # not specify `sizes`
  32x32: icon32.png     # specify sizes in the same way as the normal icons
  iphone: icon-iphone.png   # specify the `iphone` alias
  iphone-settings: icon-iphone-settings.png # `iphone-settings` alias
```

#### Add Windows tiles
```yaml
windows-tile:
  small: tile-small.png   # small tile
  medium: tile-medium.png # medium tile
  wide: tile-wide.png     # wide tile
  large: tile.large.png   # large tile
```

#### Add start-up images for smartphones (it's also called splash image or launch image)
You can specify in the same way as the smartphone icons.
```yaml
smartphone-startup-image:
  default: startup.png
  iphone-se: startup-iphone-se.png
  iphone-6: startup-iphone-6.png
  iphone-xs: startup-iphone-xs.png
```

#### Settings for smartphones
```yaml
smartphone-mode: true   # enable full-screen mode
smartphone-status-bar: red  # specify status bar color
smartphone-status-bar: black-translucent    # make status bar seamless
smartphone-title: ほげふが  # specify the icon title on the home screen
```

#### Other settings
```yaml
format-telephone: true  # allow linking to telephone number from digit sequence（It's disabled when specifying falsy value. Normally disabled.）
```

#### Add other `link`s
```yaml
link:
  - rel: stylesheet
    href: style1.css
    type: text/css
  - rel: icon
    href: favicon.ico
    type: image/vnd.microsoft.icon
```


### About each file or directory

|path|description|
|:--|:--|
|_data/         |a directory to locate additional data files
|_data/mime.yml |a cheap data file for converting from file extension (txt, png, wav, etc.) to MIME type
|_data/device.yml|a data file to define the `sizes` aliases
|_includes/     |a directory to locate include files
|_includes/settings-standard.html|an include file for maybe almost all files.
|_includes/settings-css.html|an include file to simplify importing CSS
|_includes/settings-js.html|an include file to simplify importing JS
|_includes/settings-icon.html|an include file to simplify setting icons
|_includes/settings-smartphone.html|an include file to simplify setting for smartphones
|_includes/settings-link.html|an include file to simplify to add `link` tags.
|_layouts/      |a directory to locate layout files
|_layouts/default.html|the default layout
|_sass/         |a directory to locate SASS files to import
|_sass/_variables.scss|a SASS file to define standard constants
|_site/         |the default build directory
|.sass-cache/   |a directory to locate SASS caches
|_config.yml    |a setting file of your site
|.gitignore     |a setting file to exclude files from the git management
|404.html       |a page for 404 Not Found
|Gemfile        |gem lists to use
|Gemfile.lock   |gem lists which is active（this file will be updated by `bundle update`. If you edit GemfFile, it will also be updated by `bundle install`.）
|index.md       |top page of your site
|README.md      |the description of this theme
|

