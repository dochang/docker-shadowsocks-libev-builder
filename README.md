docker shadowsocks-libev builder
================================

Build
-----

    docker build .

Run
---

    docker run --rm -v /usr/local/bin:/target shadowsocks-libev:v1.5.3

Or

    docker run --rm shadowsocks-libev:v1.5.3 cat /ss-server > /tmp/ss-server && chmod +x /tmp/ss-server


`ss-server` can be replaced with `ss-local`, `ss-redir`, `ss-tunnel`.

**NOTE**, because of technical limitation in upstream source code, all the binaries are **dynamically** linked.
