#!/bin/bash
clear
echo "Created by GoodKingJohn (aka dodo721). Send some love to Paypal dodoworkspr@gmail.com <3"
echo "Modified by Zeta616. It's faster to fix this than do it manually"
echo "Give hugs to Hubert for SCP: Secret Laboratory and Grover and Kigen for MultiAdmin and ServerMod!"
echo "Enter steam username:"
read username
echo "Enter steam password:"
read password
echo "Installing SCP Secret Laboratory..."
steamcmd +@sSteamCmdForcePlatformType windows +login $username $password +app_update 700330 -beta linux validate +quit
echo "Do you want to install server modules (MultiAdmin and ServerMod)? [y/n]"
read install_modules
if [ $install_modules = "y" ]
then
	mkdir /tmp/scpsl
	while IFS='' read -r line || [[ -n "$line" ]]; do
		echo "Downloading: $line"
		wget "$line"
	done < "./Module_URLs.txt"
	echo "Installing ServerMod..."
	mkdir "./Backup"
	mv "/home/$USER/.steam/SteamApps/common/SCP Secret Laboratory/SCPSL_Data/Managed/Assembly-CSharp.dll" "./Backup/Assembly-CSharp.dll"
	mv "./Assembly-CSharp.dll" "/home/$USER/.steam/SteamApps/common/SCP Secret Laboratory/SCPSL_Data/Managed/Assembly-CSharp.dll"
	mv "./Assembly-CSharp-firstpass.dll" "/home/$USER/.steam/SteamApps/common/SCP Secret Laboratory/SCPSL_Data/Managed/Assembly-CSharp.dll"
  	mv "./Smod2.dll" "/home/$USER/.steam/SteamApps/common/SCP Secret Laboratory/SCPSL_Data/Managed/Smod2.dll"
	echo "Backup of Assembly-CSharp.dll made"
	echo "Installing MultiAdmin..."
	mv "./MultiAdmin.exe" "/home/$USER/.steam/SteamApps/common/SCP Secret Laboratory/MultiAdmin.exe"
  	mv "./YamlDotNet.dll" "/home/$USER/.steam/SteamApps/common/SCP Secret Laboratory/YamlDotNet.dll"
fi
chmod +x start_server.sh
echo "Server installed! Use ./start_server.sh to start it!"
