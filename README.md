# Local Apache Spark Setup

A configured Vagrantfile including some simple shell scripts tailored for setting up a local Apache Spark environment from scratch.

**List of automated steps**
  1. Installation of Apache Spark _(version reference from [official docs](https://spark.apache.org/downloads.html))_
  2. Installation of JDK11
  3. Setup Python3 as defaul python version


### Usage
**Note:** It is assumed that you already have the [Vagrant](https://www.vagrantup.com) installed and this repository cloned.
  1. Within the repository, execute `vagrant plugin install vagrant-disksize`.
  2. Afterwards, create the machine with `vagrant up`
  3. Once done, you may ssh on the machine `vagrant ssh <spark-test>`
  4. You may now run Spark via `sudo /opt/spark/bin/spark-shell>` **OR** if you are more of a python person, you may run PySpark via `sudo /opt/spark/bin/pyspark>`
  
  ![pyspark sample](/images/pyspark.png)
