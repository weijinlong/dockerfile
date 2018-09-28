FROM alpine:3.8
LABEL maintainer="Johannes Schickling <schickling.j@gmail.com>"

RUN echo -e "http://mirrors.aliyun.com/alpine/v3.8/main/\nhttp://mirrors.aliyun.com/alpine/v3.8/community/" > /etc/apk/repositories \
        && apk add --no-cache beanstalkd

EXPOSE 11300

ENTRYPOINT ["/usr/bin/beanstalkd"]