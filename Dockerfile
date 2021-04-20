FROM alpine:3.13

LABEL maintainer="frank.giesecke@final-gene.de"

ENV LFTP_VERSION 4.9.2-r1

# hadolint ignore=DL3018
RUN apk add --no-cache bash

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache --virtual=.persistent \
        "lftp=${LFTP_VERSION}" \
    && { \
    echo 'set cmd:fail-exit on'; \
    echo 'set dns:cache-enable off'; \
    echo 'set ftp:passive-mode on'; \
    echo 'set ftp:ssl-allow off'; \
    echo 'set mirror:no-empty-dirs off'; \
    echo 'set net:max-retries 3'; \
    echo 'set net:reconnect-interval-base 5'; \
    echo 'set net:timeout 10'; \
    echo 'set ssl:verify-certificate no'; \
} | tee /root/.lftprc

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD ["--help"]
