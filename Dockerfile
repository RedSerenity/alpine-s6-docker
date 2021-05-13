ARG ALPINE_VERSION=3.12
ARG S6_VERSION=2.2.0.3

FROM alpine:${ALPINE_VERSION}
ARG ALPINE_VERSION
ARG S6_VERSION

LABEL org.opencontainers.image.title="Alpine+S6"
LABEL org.opencontainers.image.description="Alpine Linux container with S6 Overlay"
LABEL org.opencontainers.image.authors="Tyler Andersen <tyler@redserenity.com>"
LABEL org.opencontainers.image.version="${ALPINE_VERSION}-${S6_VERSION}"
LABEL alpine_version="${ALPINE_VERSION}"
LABEL s6_version="${S6_VERSION}"

ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_VERSION}/s6-overlay-amd64.tar.gz /tmp/

RUN set -xe && \
	tar xzf /tmp/s6-overlay-amd64.tar.gz -C / && \
	rm -Rf /tmp/*

ENTRYPOINT ["/init"]
