FROM amazonlinux

COPY setup-edge-image.sh .

RUN bash setup-edge-image.sh && rm setup-edge-image.sh

ENV PATH="/usr/lib/miniconda/bin:/usr/local/hbase-1.4.9/bin:/usr/local/hadoop-3.2.0/bin:${PATH}" \
    JAVA_HOME=/usr/lib/jvm/jre-openjdk

ENTRYPOINT start-hbase.sh \
  && hbase-daemon.sh start thrift \
  && echo "Waiting for daemons to start..." \
  && sleep 5 \
  && (cd /root; python api.py)
