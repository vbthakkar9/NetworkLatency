#!/bin/sh
echo "Merging pcap files from /home/java/temp"
cd /home/java/temp
mergecap -w /home/java/test.pcap test*
rm -rf test*
echo "Final pcap file generarted"
cd /home/java
echo "Analysis pcap file"
tshark -r test.pcap -q -z io,stat,0,"COUNT(tcp.analysis.retransmission) tcp.analysis.retransmission"
echo ""
tshark -r test.pcap -q -z io,stat,5,"COUNT(tcp.analysis.retransmission) tcp.analysis.retransmission"
echo ""
java -jar LatencyReport.jar


