#!/bin/bash
#This colour
cyan='\e[0;36m'
green='\e[1;32m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
echo `clear`;
function chknet() {
echo -e $red "[X] Your Internet is not working correctly!"
sleep 0.5
echo -e $white "[*] Checking ...."
ping -c 1 8.8.4.4 > /dev/null 2>&1
png="$?"
 if [ $png == "0" ]
then
    echo -e $red "[X] Your linux OS is not able to resolve"
    echo -e $red "hostnames over terminal using ping !!"
    echo ""
    echo -e $yellow "Search on the web : (unable to resolve hostnames ping) to find a solution"
echo ""
echo -e $white "Admin Finder will continue , but its functions may not work properly."
echo ""
echo -e $okegreen "Press [ENTER] key to continue"
read continue
    sleep 0.5
elif [ $png == "1" ]
then
    echo -e $yellow "You are connected to your local network but not to the web ."
    echo -e $yellow "Check if your router/modem gateway is connected to the web ."
echo ""
echo -e $white "Admin Finder will continue , but its functions may not work properly."
echo ""
echo -e $white "Press [ENTER] key to continue"
read continue
sleep 0.5
elif [ $png == "2" ]
then
echo -e $red "You are not connected to any network ."
echo ""
echo -e $white "Admin Finder will continue , but its functions may not work properly."
echo ""
echo -e $white "Press [ENTER] key to continue"
read continue
    sleep 0.5
    clear
fi
}
 ping -c 1 google.com > /dev/null 2>&1
png="$?"
 if [ $png == "0" ]
then
    echo -e $okegreen [✔]::[Internet Connection]: CONNECTED!;
    sleep 0.5
    cont
elif [ $png == "1" ]
then
    echo -e $yellow [✔]::[Internet Connection]: LOCAL ONLY!;
    chknet
elif [ $png == "2" ]
then
echo -e $red [✔]::[Internet Connection]: OFFLINE!;
chknet
fi
echo -e $green" 
      _       _           _         _____ _           _           
     / \   __| |_ __ ___ (_)_ __   |  ___(_)_ __   __| | ___ _ __ 
    / _ \ / _  |  _   _ \| |  _ \  | |_  | |  _ \ / _  |/ _ \  __|
   / ___ \ (_| | | | | | | | | | | |  _| | | | | | (_| |  __/ |   
  /_/   \_\____|_| |_| |_|_|_| |_| |_|   |_|_| |_|\____|\___|_|   
  
      "$white"
          --+=[ Code By "$okegreen":"$BlueF" ./malesmandii       "$white"        ]=+--
          --+=[ Github  "$okegreen":"$BlueF" www.github.com/"prabs401     $white"    ]=+--
          --+=[ Credits "$okegreen": "$BlueF"backboxindonesia.or.id     "$white" ]=+-- 
                                                                
"
	banner="Enter Target";
	echo -e $green"\n ┌─["$white"$banner"$green"]──["$white"Ex"$green"]─["$red"www.target.co.li"$green"]"
	echo -ne $green" └─────"$red"► " ; tput sgr0
	read $target;
		echo -e "\t"$green"¦ "
	echo -e $green"        ¦─["$white"Select Source"$green"]──["$white"Ex"$green"]─["$red"1"$green"]"
		echo -e "\t"$green"¦"
		echo -e "\t"$green"¦────"$red"► "$BlueF"[1] PHP"
		echo -e "\t"$green"¦────"$red"► "$BlueF"[2] ASP"
		echo -e "\t"$green"¦────"$red"► "$BlueF"[3] ASPX"
		echo -e "\t"$green"¦────"$red"► "$BlueF"[4] JS"
		echo -e "\t"$green"¦"
		echo -ne    $green"        └─────"$red"► " ; 

		tput sgr0
		read sumber;
if [[ $sumber == '1' ]]; then
	sleep 1;
	echo -e "  $BlueF[*]$white Scanning $target using source PHP";
	sleep 1;
	echo -e "  $red[!]$white If This Program Exit, then admin page not found"
	tput sgr0
	echo ""
	for vuln in `cat path/php.txt`
	do
	page=$(curl -s $target"/"$vuln);
		if [[ $page =~ "Username" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "Email" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "E-mail" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "Password" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		fi
	done
elif [[ $sumber == '2' ]]; then
	sleep 1;
	echo -e "  $BlueF[*]$white Scanning $target using source ASP";
	sleep 1;
	echo -e "  $red[!]$white If This Program Exit, then admin page not found"
	tput sgr0
	echo ""
	for vuln in `cat path/asp.txt`
	do
	page=$(curl -s $target"/"$vuln);
		if [[ $page =~ "Username" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "Email" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "E-mail" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "Password" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		fi
	done

elif [[ $sumber == '3' ]]; then
	sleep 1;
	echo -e "  $BlueF[*]$white Scanning $target using source ASPX";
	sleep 1;
	echo -e "  $red[!]$white If This Program Exit, then admin page not found"
	tput sgr0
	echo ""
	for vuln in `cat path/aspx.txt`
	do
	page=$(curl -s $target"/"$vuln);
		if [[ $page =~ "Username" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "Email" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "E-mail" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "Password" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		fi
	done

elif [[ $sumber == '4' ]]; then
	sleep 1;
	echo -e "  $BlueF[*]$white Scanning $target using source JS";
	sleep 1;
	echo -e "  $red[!]$white If This Program Exit, then admin page not found"
	tput sgr0
	echo ""
	for vuln in `cat path/js.txt`
	do
	page=$(curl -s $target"/"$vuln);
		if [[ $page =~ "Username" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "Email" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "E-mail" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		elif [[ $page =~ "Password" ]]; then
			echo -e "  \033[1;34m[*]\033[0m Found ! $target/$vuln"
			echo ""
		fi
	done
else
		echo -e "\t"$green"¦"
		echo -e "\t"$green"¦────"$red"► Wrong Command ..!"
		echo -ne    $green"        └─────"$red"► " ; 

		tput sgr0
		read sumber;
fi


trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*] (Ctrl + C ) Detected, Trying To Exit ..."
sleep 1
echo ""
echo -e $red"[*] Stop all service , Wait  ..."
sleep 1
echo ""
echo -e $yellow"[*] Thank You For Using Brutsploit  =)."
echo ""
echo -e $yellow"[*] Check Dracos Linux LFS, Penetration OS From Indonesia  =P."
exit
}