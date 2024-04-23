# EaglercraftX 1.19 Server Overview
[Demo Video](https://github.com/CaenJones/EaglercraftX-1.19-Server/assets/131218155/0ee532ab-46d3-4959-ac9a-860931ffd649)

[![Description here](https://github.com/garlontas/buttons/blob/main/buttons/200x59/linux-download_2.svg)](<Your Link here>)
[![Description here](https://raw.githubusercontent.com/garlontas/buttons/main/buttons/200x59/windows-download.svg)](<Your Link here>)


## Overview
EaglercraftX 1.19 Server is an enhanced version of the original Eaglercraft server, incorporating features from Minecraft 1.19. Note that some mobs and textures may be absent.

## Requirements
- **Minimum:** Runs on just about any system.
- **Recommended:** 4GB DDR4 RAM, 4-core x64 CPU, over 5GB free storage, and network speeds of 750 MBPS or higher for optimal performance.

## Updating Existing Servers
1. Clone the server repository: `git clone https://github.com/CaenJones/EaglercraftX-1.19-Server`
2. Alternatively, use cURL on Windows: `curl -O https://github.com/CaenJones/EaglercraftX-1.19-Server/archive/refs/heads/main.zip`
3. Copy the `world` folder from the old server to the new one.
4. Run `server.jar` and `bungee.jar` to update chunks automatically.

## Autoinstall Scripts
Scripts for easy server setup on Windows and Linux are in development at the moment. They will be in the next release.

## Installation Guides
### Linux
1. Install Java: `sudo apt install default-jdk && sudo apt install default-jre -y`
2. Clone the server repository: `git clone https://github.com/CaenJones/EaglercraftX-1.19-Server`

### Windows
1. Download and install JDK and JRE from the official Java website.
2. cURL the server repository: `curl -O https://github.com/CaenJones/EaglercraftX-1.19-Server/archive/refs/heads/main.zip`

## Running the Server
### Linux
- Start server: `./server/server.sh` (use `chmod +x` first)
- Start BungeeCord: `./bungee/bungee.sh` (use `chmod +x` first)

### Windows
- Run `/server/server.bat`
- Run `/bungee/bungee.bat`

## Making the Server Public
Forward ports 8081 and 25565, then access your server at `[server-ip:8081]`.

## Plugin Installation
- Navigate to `server/plugins` and `bungee/plugins`.
- Clone the plugin `.jar` file and create a separate directory for additional data.
- Restart the server to activate the plugin.

## FAQ
- **Can I find and craft 1.19 items?** Yes, with normal item behavior but potentially different textures.
- **Will mobs behave normally?** Most mobs are matched to their closest pre-existing characters or models, with standard drops and stats.
- **Can I find new structures?** Yes, though they may not match the blocks or layouts of 1.19.
- **Will there be updates?** Yes, updates will continue.
