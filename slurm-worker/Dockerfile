FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y slurmd munge sudo

RUN mungekey -c -f -b 8192 -v && \
    chown munge:munge /etc/munge/munge.key && \
    mkdir /run/munge && \
    chown munge:munge -R /run/munge

COPY ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]