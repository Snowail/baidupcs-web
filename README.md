# baidupcs-web

基于BaiduPCS-Go的百度网盘客户端Docker版
部署
```
docker run -d --name baidupcs \
-p 5299:5299 \
-v /your/downloads:/downloads \
-v /your/config:/root/.config/BaiduPCS-Go \
snowail/baidupcs:latest
```
