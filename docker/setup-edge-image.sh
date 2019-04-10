
# Install dependencies
yum update -y
yum install -y which vim tar gzip java-1.8.0-openjdk.x86_64 procps bzip2 gcc hostname

echo "Installing hadoop"
curl -s "http://apache.osuosl.org/hadoop/common/hadoop-3.2.0/hadoop-3.2.0.tar.gz" | tar -xz -C /usr/local/

echo "Installing hbase"
curl -s "http://archive.apache.org/dist/hbase/1.4.9/hbase-1.4.9-bin.tar.gz" | tar -xz -C /usr/local/

echo "Installing miniconda"
curl -s "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > /tmp/install-miniconda.sh
bash /tmp/install-miniconda.sh -b -f -p /usr/lib/miniconda

echo y | /usr/lib/miniconda/bin/conda install cython
/usr/lib/miniconda/bin/pip install happybase flask
