# EaglercraftX 1.19 Server 
[Demo Video](https://github.com/CaenJones/EaglercraftX-1.19-Server/assets/131218155/0ee532ab-46d3-4959-ac9a-860931ffd649)

<p align="center">
 <a href="https://github.com/CaenJones/EaglercraftX-1.19-Server/blob/main/install.sh">
    <img src="https://github.com/garlontas/buttons/blob/main/buttons/200x59/linux-download_2.svg" alt="Description here" width="200" height="59">
 </a>
 <a href="https://github.com/CaenJones/EaglercraftX-1.19-Server/blob/main/install.sh">
    <img src="https://raw.githubusercontent.com/garlontas/buttons/main/buttons/200x59/macos-download.svg" alt="Description here" width="200" height="59">
 </a>
 <a href="https://github.com/CaenJones/EaglercraftX-1.19-Server/blob/main/install.bat">
    <img src="https://raw.githubusercontent.com/garlontas/buttons/main/buttons/200x59/windows-download.svg" alt="Description here" width="200" height="59">
 </a>
</p>


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
