FROM alpine
USER root
ENV BAIDUPCS_VERSION 3.7.0
WORKDIR /

RUN	set -x && \
	apk add --no-cache --update wget unzip && \
	wget --no-check-certificate -O BaiduPCS.zip http://qiniu.zoranjojo.top/BaiduPCS-Go-${BAIDUPCS_VERSION}-linux-amd64.zip && \
	unzip BaiduPCS.zip && \
	mv BaiduPCS-Go-${BAIDUPCS_VERSION}-linux-amd64 BaiduPCS && \
	mkdir -p /opt/BaiduPCS && \
	cp -f BaiduPCS/* /opt/BaiduPCS/ && \
	rm -rf BaiduPCS* && \
	apk del wget unzip

VOLUME ["/download"]
VOLUME ["/root/.config/BaiduPCS-Go"]
CMD ["/opt/BaiduPCS/BaiduPCS-Go"]

EXPOSE 5299
