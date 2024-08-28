<!--
  Title: EaglercraftX-1.19-Server
  Description: A 1.19 Eaglercraft / EaglercraftX server project!
  Author: CaenJones
  -->
<meta name='eaglercraft, eaglercraftx, eagler, eaglercraftx server, eaglercraft server' content='HTML, JavaScript, Shell, Batchfile'>

# EaglercraftX 1.19 Server (DISCONTINUED)

> [!CAUTION]
> This project has been discontinued as of Aug 28th, 2024. Mod versions and doccumentation may be out of date. Users are encouraged to look for newer fork(s) of this program or update instances independently. 

[Demo Video](https://github.com/CaenJones/EaglercraftX-1.19-Server/assets/131218155/0ee532ab-46d3-4959-ac9a-860931ffd649)

<p align="center">
 <a href="https://github.com/CaenJones/EaglercraftX-1.19-Server/blob/main/install.sh">
    <img src="https://github.com/garlontas/buttons/blob/main/buttons/200x59/linux-download_2.svg" alt="Description here" width="200" height="59">
 </a>
 <a href="https://github.com/CaenJones/EaglercraftX-1.19-Server/blob/main/install.sh">
    <img src="https://github.com/garlontas/buttons/blob/main/buttons/200x59/macos-download_2.svg" alt="Description here" width="200" height="59">
 </a>
 <a href="https://github.com/CaenJones/EaglercraftX-1.19-Server/blob/main/install.bat">
    <img src="https://raw.githubusercontent.com/garlontas/buttons/main/buttons/200x59/windows-download.svg" alt="Description here" width="200" height="59">
 </a>
</p>

## Overview
Hello! The EaglercraftX 1.19 server project is an enhanced version of the original Eaglercraft server which incorporates items, mobs, structures, and other properties from Minecraft 1.19. Please note that some mobs and textures may be missing.
<br>
<br>
If you like this project and want to support it, please consider making a fork or giving it a :star:!

## Requirements
- **Minimum:** Runs on just about any system.
- **Recommended:** 4GB DDR4 RAM, 4-core x64 CPU, over 5GB free storage, and network speeds of 750 MBPS or higher for optimal performance.

## Updating Existing Servers
1. Clone the server repository: `git clone https://github.com/CaenJones/EaglercraftX-1.19-Server`
2. Use cURL for Windows: `curl -O https://github.com/CaenJones/EaglercraftX-1.19-Server/archive/refs/heads/main.zip`
3. Copy the `world` folder from the old server to the new one.
4. Run `server.jar` and `bungee.jar` to update chunks automatically.

## Running the Server
Please download the [installer script](https://github.com/CaenJones/EaglercraftX-1.19-Server/tree/main#eaglercraftx-119-server) for your appropriate operating system before procedding to this step.

### Linux & MacOS
- Start server: `./server/server.sh` (use `chmod +x` first)
- Start bungeecord: `./bungee/bungee.sh` (use `chmod +x` first)

### Windows
- Run `/server/server.bat` (in Eaglercraft server directory)
- Run `/bungee/bungee.bat` (in Eaglercraft server directory) 

Now forward ports 8081 and 25565, then access your server at `[server-ip:8081]`.

## What to do if Your Server Crashes
If your server is not starting after a crash, try deleting the `server/world/session.lock` file and restart it.

## Plugin Installation
- Navigate to `server/plugins` and `bungee/plugins`.
- Clone the plugin `.jar` file and create a separate directory for additional data.
- Restart the server to activate the plugin.

## FAQ
- **Can I find and craft 1.19 items?** Yes, with normal item behavior but potentially different textures.
- **Will mobs behave normally?** Most mobs are matched to their closest pre-existing characters or models, with standard drops and stats.
- **Can I find new structures?** Yes, though they may not match the blocks or layouts of 1.19.
