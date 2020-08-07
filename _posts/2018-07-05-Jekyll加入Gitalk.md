---
layout: post
title: '在jekyll博客里设置gitalk评论系统'
tags: jekyll 
---

### 前言

umm如果你想在博客里加上评论系统怎么办？最近我发现了一款叫做[gitalk](https://gitalk.github.io)的评论系统。这样一个评论系统基于github的issue。所以，你只能让同是github用户一起评论和聊天，这是他的缺点。

啊，不过没事

那么这个东西要怎么弄呢？有一定网站技术的程序员一定知道，这肯定需要引入css文件和js。

这一个对于一个小博客可能已经够了。如果不够？[来必力Livere评论系统](https://livere.com)欢迎你。

进入正题吧！

### 01.注册GitHub Application

在github主页右上角点击你的头像，settings，进入界面后点击developer settings,添加OAuth Application。

```
Application name:取一个霸气的名称 
Homepage URL:你的博客网址
Application description:项目描述
Authorization callback URL:你的博容网址
```

注册成功后会获得Client ID和Client Secret

### 02.配置_config.yml

在_config.yml这个文件里*(或者其他在jekyll里引用的site文件)*添加以下内容:

```yaml
gitalk: true
gitalk_clientid: '刚刚注册的ClientID'
gitalk_secret: '刚刚注册的Secret'
gitalk_repo: '用户名.github.io或者是一个存放评论的仓库'
gitalk_owner: 'github用户名'
gitalk_admin: 'github用户名'
gitalk_dfm: false
```

### 03.修改post.html

打开网站根目录的`post.html`，这个文件一般在`_layouts`文件夹。在该文件里找到适合放评论的位置（可以是文章末尾），嵌入以下字符：

```html
<div id="git_thread"></div>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">

<script src="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js"></script>

<script>
  var gitalk = new Gitalk({
    clientID: '{{ site.gitalk_cilentid }}',
    clientSecret: '{{ site.gitalk_secret }}',
    repo: '{{ site.gitalk_repo }}',
    owner: '{{ site.gitalk_owner }}',
    admin: '{{ site.gitalk_admin }}',
    id: location.pathname, 
    distractionFreeMode: '{{ site.gitalk_dfm }}'
  })

  gitalk.render('git_thread')
</script>
```

啊，应该挺简单的吧

*感谢@tea9的支持和他在他的文章评论里发给我的修改内容*
