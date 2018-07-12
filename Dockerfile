FROM postgres:10-alpine

ENV VER=2.10.2
ENV PGSHRT=93

RUN apk --update add gcc make g++ zlib-dev

ADD postgresql-hll-${VER} postgresql-hll-${VER}

RUN cd postgresql-hll-${VER} && make
RUN cd postgresql-hll-${VER} && make install
