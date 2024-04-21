# EaglercraftX 1.19 Server
[demo.webm](https://github.com/CaenJones/EaglercraftX-1.19-Server/assets/131218155/0ee532ab-46d3-4959-ac9a-860931ffd649)

## Introduction
This server is a modified version of the original 1.8.8 eaglercraft server supporting some functionality of minecraft 1.19 please note that some mobs and textures may be missing from the game.

## Update Guide For Pre-Existing Servers
Now, we still need to clone the server repo using `git`. Please run the following command:
<br>
<br>
`git clone https://github.com/CaenJones/EaglercraftX-1.19-Server`
<br>
<br>
then we just go into your pre-existing server folder and copy the `world` folder from the old `/server/world` into the new one. Then just run the `server.jar ` and `bungee.jar` files like normal and the chunks should be automatically updated!

## Clean Install Guide (Linux + Windows)
For this tutorial, we will be using Ubuntu 22.04 LTS. First of all, java is required to run bungeecord and the server file. To do this, we will need to run the following commands:
<br>
<br>
`sudo apt install default-jdk && sudo apt install default-jre -y`
<br>
<br>
Now, we need to clone the server repo using `git`. Please run the following command:
<br>
<br>
`git clone https://github.com/CaenJones/EaglercraftX-1.19-Server`
### Running The Server
Now we can start Eaglercraft! open 2 terminal tabs in the server repository folder and paste in the following snipits (updated for logj4 patch). The server will also automatically restart in the event of a crash:
<br>
<br>
first tab (to start server): `./server/server.sh`
<br>
<br>
second tab (to start bungeecord): `./bungee/bungee.sh`
<br>
<br>
### Making Server Public
Great! Now, you need to forward ports  `8081` and `25565` and navigate to your servers public ip `[server-ip:8081]`. The server welcome page should be displayed. Congrats on running your own server!

### Installing Plugins
In order to install plugins, navigate to `server > plugins` and `bungee > plugins`. You will need to clone the initial [plugin-name.jar] file as well as creating a separate directory in the plugins folder in order to store the additional data. Then just restart the server and the plugin should be running!

## FAQ
### Can I still find and craft 1.19 items?
Yes, you are able to mine ores like netherite and craft things like shields. The items will act normally, however the textures may not match.
### What about mobs? Will they still behave normally?
Yes, most mobs have been matched to their closest prexisting characters or models with a nametag identifier. Their drops and stats will remain by the 1.19 standard.
### Can I find new naturally generated structures?
Yes although they may not have matching blocks or layouts.
### Will there continue to be updates?
Hell yeah!
