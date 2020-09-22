---
layout: post
title: Windows搭建nginx的rtmp服务以及使用
tag: Windows 开源 rtmp
---

### 开始！

从下面的网址下载GryphonNginx

```
http://nginx-win.ecsds.eu/download/nginx%201.7.11.3%20Gryphon.zip
```

解压GryphonNginx

用普通编码为UTF-8的编辑器编辑GryphonNginx里面conf目录的`nginx-win.conf`

在空处添加以下内容

```
rtmp{
   server{
      listen 1260;
      chunk_size 4000;
      application live {
         live on;
         hls on;
         hls_path ./live;
         hls_sync 2ms;
         hls_playlist_length 4s;
         hls_fragment 5s;
      }
   }
}
```

稍微解释一下：

- `listen 1260;` -> 开放监听1260端口，这里可以任意更改，但后面的操作也要接着更改

- `application live` { -> 请求程序的名称，这里程序为live，也可以更改，无大碍

- `hls_path ./live;` -> 设置hls存放的路径，这里就放在live文件夹

- `hls_sync 2ms;` -> 设置同步在2毫秒间，就是设置低延迟，但仍有延迟

- `hls_fragment 5s;` -> 在每个.ts文件内都有5秒的视频画面内容

保存nginx-win.conf

打开OBS->设置->推流

选择自定义；推流地址写rtmp://127.0.0.1:1260/live

现在可以设计你的OBS画面，或者转到刚刚GryphonNginx的目录，按住Shift+鼠标右键，在此处打开命令窗口(Windows10是打开Powershell)

输入命令

```
nginx -c conf\nginx-win.conf
```

把这个命令窗口最小化

首次使用需要通过防火墙认证，允许Nginx通过防火墙

在OBS点击推流按钮

看到OBS窗口右下角的绿色方块即为推流成功

其他设备如果想要连接到这个rtmp直播时就输入

```
rtmp://*OBS推流的电脑ip*:1260/live
```

### 如何关闭

首先你得先把OBS的推流给关了，要不然就很奇怪

然后按下Windows + R组合键，输入

```
taskkill /f /im nginx*
```

### 相关
此教程亦提供视频
<iframe src="//player.bilibili.com/player.html?aid=840122172&bvid=BV1x54y1d7ZA&cid=176957363&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>
