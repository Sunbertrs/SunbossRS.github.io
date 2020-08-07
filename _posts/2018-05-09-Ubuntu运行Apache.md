---
title: 'Ubuntu系统安装Apache'
layout: post
tags: linux
img: https://coding.net/u/SunbossRS/p/blog_web_source/git/raw/master/img03/cover.png
---

像Ubuntu系统安装Apache这一类的教程应该挺多的吧，这里我只大概的做一下笔记。

### 01.先安装Apache

打开终端Bash，然后输入命令。

```bash
sudo apt-get install apache2
```

安装完成后就可以使用以下命令调试apache。

```bash
sudo apache2ctl -k start
# 开启Apache

sudo apache2ctl -k stop
# 关闭Apache

sudo apache2ctl -k restart
# 重启Apache
```

虚拟目录在 httpd.conf 中:

```
<VirtualHost *>
DocumentRoot "/home/你的ubuntu用户名/目录"
ServerName *自定义域名*
<Directory "/home/你的ubuntu用户名/目录"> allow from all Options +Indexes </Directory>
</VirtualHost>
```

把上面的信息补充好。

在 `/etc/apache2/sites-enabled/000-default`中，里面有这样的一段内容：

```bash
NameVirtualHost *
<VirtualHost *>
ServerAdmin webmaster@localhost
DocumentRoot /var/www/
```

这是设置虚拟主机的，对我来说没什么意义。里面的`ServerAdmin`是指管理员邮箱。`DocumentRoot`不用理他。

### 试验

因为上面我们已经完成了，基本上的配置了。所以，现在我们输入`*你的自定义域名*`或者`http://localhost/`

**记住!上面用了自定义域名的，必须要重启apache才能生效!**

```bash
sudo apache2ctl- k restart
```

在浏览器里敲`localhost`就会看到`it's work!`的字样了。

### 开源站

如果你不想让这个网站`it's work!`，你可以试一试改成开源站！

一直对开源站情有独钟，因为觉得这个页面很简便，很酷。所以研究了一下。

将`Apache24/htdocs`文件夹下面的`index.html`删除，因为默认显示这个页面。

我们刚才看到的`It's works!`页面就是这个文件的内容，然后将我们的文件及文件夹放到`Apache24/htdocs`下面，就可以成为开源站了。这时候，你看到的标题是`index of /`这样的了。
  

