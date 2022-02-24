# NetworkLatency
## Server Configuration

Install java with following commands.

    sudo apt update
    sudo apt install openjdk-8-jre-headless

Get Server.sh and ServerLatency.jar file with following command and copy to `/home/java`

    wget https://raw.githubusercontent.com/vbthakkar9/NetworkLatency/main/Server.sh
    wget https://github.com/vbthakkar9/NetworkLatency/raw/main/ServerLatency.jar

Provide full permission on that folder.

## Run Server Program
Run Server.sh file with following command.
    
    sh Server.sh

It will ask for the port number and file name as input paramters. Can provide any tcp port number and any file name.

## Client Configuration

Install java with following commands

    sudo apt update
    sudo apt install openjdk-8-jre-headless

Install tshark with following command

    sudo apt install tshark

Get Client.sh, Final-Analysis.sh and ClientLatency.jar, LatencyReport.jar file and copy to `/home/java`

    wget https://raw.githubusercontent.com/vbthakkar9/NetworkLatency/main/Client.sh
    wget https://github.com/vbthakkar9/NetworkLatency/raw/main/ClientLatency.jar
    wget https://github.com/vbthakkar9/NetworkLatency/raw/main/Final-Analysis.sh
    wget https://github.com/vbthakkar9/NetworkLatency/raw/main/LatencyReport.jar

Provide full permission on that folder.

Create folder `/home/java/temp` where our `pcap` files will be generated.

Provide full permission on that folder.

## Run Client Program

Run Client.sh file with following command.

    sh Client.sh

It will ask for the server port number(same port which we have provided on server), server ip and file name that you want to send over network as input paramters. 
Once file is uploaded on server we will get `success` message on screen. Press `ctrl+c` to exit.

## Generate Report
Once the above steps are done we can generate the report. To generate the report run Final-Analysis.sh with following command.

    sh Final-Analysis.sh

It will generate report for retransmission done every 10 seconds, total retransmission packets and network latency average, p95,p99 for every 10 seconds.
