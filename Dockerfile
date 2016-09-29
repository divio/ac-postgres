FROM postgres:9.5.4

RUN apt-get update && \
    apt-get install -y python3-pip python3-dev lzop pv daemontools && \
    pip3 install wal-e[aws]==1.0.0rc1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
