#!/bin/bash


#------------------> Color Code:
RED="\033[01;31m"
BLUE="\033[36m"
GREEN="\033[01;32m"
XX="\033[0m" #--- Close COLOR

echo -e "\n${RED}╔═════{ Run as root user${XX}"
sleep 0.5
echo -e "\n${BLUE}╔═════{ Installation:${XX}"
echo -e "\n${GREEN}    ══{ Pre-requisites: ${XX}"
	apt install -y git build-essential apt-utils cmake libfontconfig1 libglu1-mesa-dev libgtest-dev libspdlog-dev libboost-all-dev libncurses5-dev libgdbm-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev mesa-common-dev qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5websockets5 libqt5websockets5-dev qtdeclarative5-dev golang-go qtbase5-dev libqt5websockets5-dev libspdlog-dev python3-dev libboost-all-dev mingw-w64 nasm
echo -e "\n${GREEN}    ══{ Python: ${XX}"
	apt install python3-dev python3.10-dev libpython3.10 libpython3.10-dev python3.10
echo -e "\n${BLUE}╔═════{ Building the Client:${XX}"
sleep 0.5
echo -e "\n${GREEN}    ══{ Clone the repository: ${XX}"
	git clone https://github.com/HavocFramework/Havoc.git 
echo -e "\n${GREEN}    ══{ Clone the repository: ${XX}"
	cd Havoc/Client && make  && ./Havoc
echo -e "\n${BLUE}╔═════{ Building the Teamserver:${XX}"
sleep 0.5
	cd .. && cd Teamserver && go mod download golang.org/x/sys && go mod download github.com/ugorji/go && ./Install.sh && make
echo -e "\n${GREEN}╔═════{ Installation Completed${XX}"
echo -e "${BLUE}╔═════{ Start Havoc by doing the following:${XX}"
echo -e "${GREEN}    ══{ Start Teamserver: cd Havoc/Teamserver && ./teamserver server --profile ./profiles/havoc.yaotl ${XX}"
echo -e "${GREEN}    ══{ Start Havoc in other terminal: cd Havoc/Client && ./Havoc ${XX}"
echo -e "${GREEN}    ══{ The defualt setting are as follow: 5pider/password1234 ${XX}"
echo -e "${GREEN}    ══{ User name: 5pider ${XX}"
echo -e "${GREEN}    ══{ Password: password1234 ${XX}"
echo -e "${GREEN}    ══{ Host: 0.0.0.0 ${XX}"
echo -e "${GREEN}    ══{ Port: 40056 ${XX}"
echo -e "${GREEN}    ══{ that can be changed from the config file: Havoc/Teamserver/profiles/havoc.yaotl ${XX}"

