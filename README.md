# NetworkLatency
## Server Configuration

Install java with following commands.

    sudo apt update
    sudo apt install openjdk-8-jre-headless

Get Server.sh and ServerLatency.jar file with following command and copy to `/home/java`

    wget https://raw.githubusercontent.com/vbthakkar9/NetworkLatency/main/Server.sh
    wget https://github.com/vbthakkar9/NetworkLatency/raw/main/ServerLatency.jar

Give permission on folder

## Run Server Program
Run Server.sh file with following command.
    
    sh Server.sh

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

Give permission on folder

Create folder `/home/java/temp` where our `pcap` files will be generated.

Give permission on folder

## Run Client Program

Run Client.sh file with following command.

    sh Client.sh

Once file is uploaded on server we will get success message on screen. Press `ctrl+c` to exit.

## Generate Report
Once the above steps are done we can generate the report. To generate the report run Final-Analysis.sh with following command.

    sh Final-Analysis.sh
