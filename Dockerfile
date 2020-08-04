# 加入phantomjs+highcharts-png-renderer报表图片生成服务
FROM centos:centos7

LABEL maintainer="Linus Lee <lizhenghong@ucen.cc>"

# 拷贝highcharts-png-renderer到容器
ADD highcharts-png-renderer /app/highcharts-png-renderer/

RUN yum install fontconfig -y && \
    cd /app/highcharts-png-renderer && \
    chmod +x phantomjs && \
    ln -s /app/highcharts-png-renderer/phantomjs /usr/local/bin/phantomjs

EXPOSE 11942

WORKDIR /app/highcharts-png-renderer

CMD ["phantomjs", "run.js"]