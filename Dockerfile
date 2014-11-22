FROM buildpack-deps:wheezy
MAINTAINER dochang@gmail.com

WORKDIR /

ENV PROJECT shadowsocks-libev
ENV VERSION 1.5.3
ENV SRC_DIR ${PROJECT}-${VERSION}
ENV ARCHIVE_URL https://github.com/madeye/${PROJECT}/archive/v${VERSION}.tar.gz

RUN curl -sL ${ARCHIVE_URL} | tar x -z -f - \
  && cd ${SRC_DIR} \
  && ./configure \
  && make \
  && cd src \
  && cp ss-local ss-server ss-redir ss-tunnel / \
  && cd / \
  && rm -rf ${SRC_DIR}

COPY installer /installer
CMD ["/installer"]
