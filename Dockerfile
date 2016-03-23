FROM yoojia/ubuntu:14.04

MAINTAINER Yoojia Chen <yoojiachen@gmail.com>

ADD factorio-0_12_28.tar.gz /

WORKDIR /factorio

ADD start.sh ./ 
RUN chmod +x start.sh

VOLUME ["/factorio/saves"]

EXPOSE 34197/udp

ENTRYPOINT ["./start.sh"]
