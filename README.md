# Headless Factorio Dockerized Server
## 异星工厂服务端Docker版

### 当前版本

> 0.12.29

### 最简使用


```bash
docker run -d -p 34197:34197/udp --name factorio-server yoojia/factorio:latest
```

### 储存服务端地图

```bash
docker run -d \
 -v <your-local-saves-dir>:/factorio/saves \
 -p 34197:34197/udp \
 --name factorio-server \
 yoojia/factorio:latest
```

通过修改`<your-local-saves-dir>`来指定保存服务端地图的路径

### 服务端自启动

```bash
docker run -d \
 -v <your-local-saves-dir>:/factorio/saves \
 -p 34197:34197/udp \
 --name factorio-server \
 --restart=always \
 yoojia/factorio:latest
```
