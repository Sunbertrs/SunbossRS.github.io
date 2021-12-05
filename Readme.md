![](/jekylltheme.jpg)

# SunbossRS Blog with jekyll-theme-mdui

> A Jekyll theme based on mdui

> 基于[Kejunmao](https://github.com/kejunmao/jekyll-theme-mdui)所做的主题分支

## Contents

* [Demo](#demo)
* [Quick start](#quick-start)
* [Note](#note)
* [Contributing](#contributing)
* [Development](#development)
* [License](#license)

## Demo

[KeJun's Blog](https://blog.kejun.me)

## Quick start

[Quick start](http://mdui.kejun.me/#/quickstart)

[快速开始](http://mdui.kejun.me/#/zh-cn/quickstart)

## Note

File Required or Optional:

|files|Required or Optional|Description|
|---  |---                 |---        |
|mainifest.json|Optional   |Is the only file that every WebExtension must contain.See [here](https://developer.mozilla.org/en-US/Add-ons/WebExtensions/manifest.json).|
|sw.js|Optional            |Service Workers.See [here](https://developers.google.com/web/fundamentals/getting-started/primers/service-workers).|
|search.json|Optional|If you use the search page, it is required.|
|tags.json|Optional|If you use the tags page, it is required.|
|_data/friends.yml|Optional|If you use the friends page, it is required.|
|_data/sns.yml|Optional|It is footer sns,if you want used, it is required.|
|_data/meng.yml|Optional|It is Meng option,if you want used, it is required.|
|_data/site.yml|Required|It is theme config.|
|_data/lang.yml|Required|It is language config.|
|_data/menus.yml|Required|It is site menus config.|

How to use? See Docs.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/KeJunMao/jekyll-theme-mdui. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, and `assets` tracked with Git will be released.

## License

[![license](https://img.shields.io/github/license/KeJunMao/jekyll-theme-mdui.svg?style=flat-square)](https://github.com/KeJunMao/jekyll-theme-mdui/blob/master/LICENSE.txt)

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
