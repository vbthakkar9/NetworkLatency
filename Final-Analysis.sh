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
rm -rf temp.txt
tshark -r test.pcap -2Y "tcp.analysis.ack_rtt" -T fields -e tcp.analysis.ack_rtt | sort -rn >> temp.txt
head -`echo scale=0\;$(cat temp.txt|wc -l)\*5/100 | bc -l` temp.txt |awk '{s+=$1}END{print "Latency p95 :",s/NR}' RS="\n"
head -`echo scale=0\;$(cat temp.txt|wc -l)\*1/100 | bc -l` temp.txt |awk '{s+=$1}END{print "Latency p99 :",s/NR}' RS="\n"
head -`echo scale=0\;$(cat temp.txt|wc -l)\*100/100 | bc -l` temp.txt |awk '{s+=$1}END{print "Latency Average :",s/NR}' RS="\n"


