#!/bin/sh
echo "Merging pcap files from /home/java/temp"
cd /home/java/temp
mergecap -w /home/java/test.pcap test*
rm -rf test*
echo "Final pcap file generarted"
cd /home/java
echo "Analysis pcap file"
tshark -r test.pcap -q -z io,stat,10,"COUNT(tcp.analysis.retransmission) tcp.analysis.retransmission"| grep -P "\d+\.?\d*\s+<>\s+|Interval +\|" | tr "|" " " | sed -E 's/<>/-/;'
echo ""
tshark -n -r test.pcap -Y "tcp.analysis.retransmission" -T fields -e tcp.stream | wc -l
echo ""
java -jar LatencyReport.jar


