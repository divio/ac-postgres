FROM postgres:9.5

RUN apt-get update && \
    apt-get install -y python-pip python-dev lzop pv daemontools && \
    pip install wal-e && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
