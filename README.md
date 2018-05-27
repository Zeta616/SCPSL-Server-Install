# SCPSL Server Update Script (Ubuntu 16.04)
Linux update script for SCP SL server installation. Manual configuration of the config file is still needed, this more for updating the server.

## To Use:
- Make sure update_server.sh and Module_URLs.txt are in a folder together
- Give update_server.sh executeable permissions with `chmod +x ./update_server.sh`
- Run `./update_server.sh`
- The script will ask for your steam login.
- After a while it will have installed the SCP SL server!
- You can then choose to also install ServerMod and MultiAdmin
- Viola!

## Note on launching the server:
Install TMUX. Use TMUX to run `mono MultiAdmin.exe` in the correct folder.
