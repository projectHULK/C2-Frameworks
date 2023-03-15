#!/bin/bash


#------------------> Color Code:
RED="\033[01;31m"
BLUE="\033[36m"
GREEN="\033[01;32m"
XX="\033[0m" #--- Close COLOR

echo -e "\n${RED}╔═════{ Run as root user${XX}"
sleep 0.5
echo -e "\n${BLUE}╔═════{ Cloning the repository:${XX}"
	git clone --recursive https://github.com/BC-SECURITY/Empire.git
	cd Empire && ./setup/checkout-latest-tag.sh
	sudo ./setup/install.sh
echo -e "\n${GREEN}╔═════{ Installation Completed${XX}"
echo -e "\n${BLUE}╔═════{ Start Server:${XX}"
echo -e "\n${GREEN}    ══{ sudo powershell-empire server${XX}"
echo -e "\n${BLUE}╔═════{ Start Client:${XX}"
echo -e "\n${GREEN}    ══{ powershell-empire client${XX}"
echo -e "\n${BLUE}╔═════{ Read More at:${XX}"
echo -e "\n${GREEN}    ══{ https://github.com/BC-SECURITY/Empire${XX}"


