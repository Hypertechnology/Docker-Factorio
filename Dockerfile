FROM yoojia/ubuntu:14.04

MAINTAINER Yoojia Chen <yoojiachen@gmail.com>

# 添加Factorio源文件
ADD factorio.tar.gz /

WORKDIR /factorio

# 添加启动脚本文件
ADD start.sh .
RUN chmod +x start.sh

VOLUME ["/factorio/saves"]

EXPOSE 34197/udp

ENTRYPOINT ["./start.sh"]
