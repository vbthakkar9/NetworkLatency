#!/bin/sh
echo "Removing old pcap files"
cd /home/java/temp
rm -rf test*
cd /home/java
rm -rf test.pcap
rm -rf temp.txt
java -jar ClientLatency.jar
