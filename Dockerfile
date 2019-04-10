FROM amazonlinux

# This can be shared with
# docker share -o <tar-file-name> <docker-image>
# docker load -i <tar-file-name>
#
# Question: How are "updates" applied? Is it just a matter of downloading a new version?

# Install dependencies
RUN yum update -y && \
    yum install -y which vim tar gzip java-1.8.0-openjdk.x86_64 procps bzip2 gcc hostname

# Install hadoop
# RUN curl -s "http://apache.osuosl.org/hadoop/common/hadoop-3.2.0/hadoop-3.2.0.tar.gz" | tar -xz -C /usr/local/
#
# # Install hbase
# RUN curl -s "http://archive.apache.org/dist/hbase/1.4.9/hbase-1.4.9-bin.tar.gz" | tar -xz -C /usr/local/
#
# # Install miniconda
# RUN curl -s "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > /tmp/install-miniconda.sh \
#     && bash /tmp/install-miniconda.sh -b -f -p /usr/lib/miniconda
#
# ENV PATH="/usr/lib/miniconda/bin:/usr/local/hbase-1.4.9/bin:/usr/local/hadoop-3.2.0/bin:${PATH}" \
#     JAVA_HOME=/usr/lib/jvm/jre-openjdk
#
# RUN echo y | conda install cython && \
#     pip install happybase

# For python (does this work?)
# EXPOSE 5000

# RUN start-hbase.sh && \
#     hbase-daemon.sh start thrift
# or,
# ENTRYPOINT ["start-services.sh"]
# ?
