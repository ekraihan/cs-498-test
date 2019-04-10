FROM amazonlinux

COPY setup-edge-image.sh .

RUN bash setup-edge-image.sh && rm setup-edge-image.sh

ENTRYPOINT start-hbase.sh && hbase-daemon.sh start thrift > /dev/null; python root/api.py
