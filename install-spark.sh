#!/bin/bash

# We are using Spark 2.4.6
wget http://mirror.rise.ph/apache/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz
mkdir /opt/spark
tar -xzvf spark-2.4.6-bin-hadoop2.7.tgz
sudo mv spark-2.4.6-bin-hadoop2.7/* /opt/spark/

echo "export SPARK_HOME=/opt/spark" >> ~/.bashrc
echo "export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin" >> ~/.bashrc
source ~/.bashrc


# Install pip for python package manager
sudo apt install -y python3-pip

# Install other essential programming python libs
sudo apt install build-essential libssl-dev libffi-dev python3-dev -y

# Set python3 as default python version
update-alternatives --install /usr/bin/python python /usr/bin/python3 10