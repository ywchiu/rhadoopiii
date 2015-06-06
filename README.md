RHadoop Course Material
=============

Slideshare: https://www.slideshare.net/secret/gDf3JYJRPWzkf5

Source Code: http://rpubs.com/ywchiu/25570

Plyrmr Code: http://rpubs.com/ywchiu/plyrmr


### [實際應用] 使用Hadoop 分析 Facebook 打卡資訊

https://www.youtube.com/watch?v=FQr2nVvkLzc

sudo yum install python-pip

sudo pip install requests

### 安裝步驟

- https://youtu.be/NPbjtdksHOE

- https://youtu.be/5-oPDfy1LxY

- https://youtu.be/dUeLbl1dcXs


# 2330 Analysis
==========================

> tw2330 = read.csv("~/Downloads/tw2330.csv", head=TRUE)

> head(tw2330)

> head(tw2330,10)

> tail(tw2330,10)

> str(tw2330)

> tw2330$Date = as.Date(tw2330$Date)

> str(tw2330)

> tw2330[tw2330$Date >='2014-03-01' & tw2330$Date < '2014-09-01'  ,]

> tw2330_mar_sep = tw2330[tw2330$Date >='2014-03-01' & tw2330$Date < '2014-09-01'  ,]

> min(tw2330_mar_sep$Close)

> max(tw2330_mar_sep$Close)

> mean(tw2330_mar_sep$Close)

> hist(tw2330_mar_sep$Close)

> hist(tw2330$Close)

> boxplot(tw2330$Close)

> head(tw2330[order(tw2330$Close, decreasing=TRUE)  ,])

> tw2330$tf =  ifelse(tw2330$Close - tw2330$Open > 0 , TRUE, FALSE)

> table(tw2330$tf)

# RHBASE INSTALL
==============================
>  hbase shell

> create 't1','f1'

> ERROR: Can't get master address from ZooKeeper; znode data == null
> 
### restart habase service
> sudo service hbase-master restart

> sudo env JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera /usr/lib/hbase/bin/hbase-daemon.sh restart regionserver

> sudo service zookeeper-server restart
> 
> 
### install thrift 
> sudo yum install automake libtool flex bison pkgconfig gcc-c++ boost-devel libevent-devel zlib-devel python-devel ruby-devel

> sudo yum install openssl openssl-devel

> wget https://archive.apache.org/dist/thrift/0.8.0/thrift-0.8.0.tar.gz

> tar -zxvf thrift-0.8.0.tar.gz

> cd thrift-0.8.0

> ./configure

> make

> sudo make install
> 
> 
### config thrift
> sudo updatedb

> export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig

> pkg-config --cflags thrift

> sudo cp /usr/local/lib/libthrift-0.8.0.so /usr/lib64/ 
> 
> 
### install rhbase
> wget --no-check-certificate https://github.com/RevolutionAnalytics/rhbase/blob/master/build/rhbase_1.2.1.tar.gz?raw=true

> mv rhbase_1.2.1.tar.gz\?raw\=true rhbase_1.2.1.tar.gz

> sudo PKG_CONFIG_PATH=/usr/local/lib/pkgconfig R CMD INSTALL rhbase_1.2.1.tar.gz
