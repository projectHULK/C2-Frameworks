#!/bin/bash


#------------------> Color Code:
RED="\033[01;31m"
BLUE="\033[36m"
GREEN="\033[01;32m"
XX="\033[0m" #--- Close COLOR

echo -e "\n${RED}╔═════{ Run as root user${XX}"
sleep 0.5
echo -e "\n${BLUE}╔═════{ Installing .NET:${XX}"
	wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh && chmod +x ./dotnet-install.sh && ./dotnet-install.sh --version latest
echo -e "\n${BLUE}╔═════{ Cloning the repository:${XX}"
	git clone --recurse-submodules https://github.com/cobbr/Covenant
sleep 0.5
	cd Covenant/Covenant && dotnet run
echo -e "\n${GREEN}╔═════{ Installation Completed${XX}"
echo -e "\n${BLUE}╔═════{ Go to Covenant/Covenant & Run the framework:${XX}"
echo -e "\n${GREEN}    ══{ dotnet run${XX}"
echo -e "\n${BLUE}╔═════{ Open the link:${XX}"
echo -e "\n${GREEN}    ══{ https://127.0.0.1:7443/covenantuser/login${XX}"
echo -e "\n${BLUE}╔═════{ Read More at:${XX}"
echo -e "\n${GREEN}    ══{ https://github.com/cobbr/Covenant/ ${XX}"
