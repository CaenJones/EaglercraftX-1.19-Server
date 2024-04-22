

# EaglercraftX 1.19 Server
[demo.webm](https://github.com/CaenJones/EaglercraftX-1.19-Server/assets/131218155/0ee532ab-46d3-4959-ac9a-860931ffd649)

## Introduction
This server is a modified version of the original 1.8.8 eaglercraft server supporting some functionality of minecraft 1.19 please note that some mobs and textures may be missing from the game.

## Update Guide For Pre-Existing Servers
First, we still need to clone the server repo using `git`. Please run the following command:
<br>
<br>
`git clone https://github.com/CaenJones/EaglercraftX-1.19-Server`
<br>
<br>
It is also possible to use cURL on windows systems to download the source folder from github (extract needed):
<br>
<br>
`curl -O https://github.com/CaenJones/EaglercraftX-1.19-Server/archive/refs/heads/main.zip`
<br>
<br>
then we just go into your pre-existing server folder and copy the `world` folder from the old `/server/world` into the new one. Then just run the `server.jar ` and `bungee.jar` files like normal and the chunks should be automatically updated!

## Clean Install Guide (Linux Version)
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

## Clean Install Guide (Windows Version)
It is also possible to install the Eaglercraft 1.19 server on window systems the same dependancies are needed from the linux setup although there is a different way of going about installing them:

### Installing the JRE and JDK
1.  **Download the JDK Installer:**
    -   Go to the [Java SE Downloads](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) page.
    -   Click on "Accept License Agreement."
    -   Under the "Download" menu, select the `.exe` file that matches your version of Windows 

1.  **Download the JRE Installer:**
    -   Visit the [Oracle Java SE Advanced & Suite Products](https://www.oracle.com/java/technologies/javase-jre8-downloads.html) page.
    -   Click on "Accept License Agreement."
    -   Under the "Download" menu, select the `.exe` file that corresponds to your version of Windows

2.  **Install the JRE:**
    -   Locate the downloaded `.exe` file in your downloads folder.
    -   Double-click the installer file to start the installation process.
    -   Follow the on-screen instructions to complete the installation. This typically involves accepting the license agreement, choosing the installation directory, and clicking through the installation wizard [1](https://docs.oracle.com/javacomponents/msi-jre/install-guide/installing-jre-command-line.htm).

2.  **Install the JDK:**
    -   Locate the downloaded `.exe` file in your downloads folder.
    -   Double-click the installer file to start the installation process.
    -   Follow the on-screen instructions to complete the installation. This typically involves accepting the license agreement, ch
## Running The Server (Linux Version)
Now we can start Eaglercraft! open 2 terminal tabs in the server repository folder and paste in the following snipits (updated for logj4 patch). The server will also automatically restart in the event of a crash:
<br>
<br>
first tab (to start server): `./server/server.sh`
<br>
<br>
second tab (to start bungeecord): `./bungee/bungee.sh`
<br>
<br>

## Running The Server (Windows Version)
A new (batchfile) script has been created to allow the same auto start/stop functionality on the linux version. Here is how to start them:
<br>
<br>
First, navigate to your servers `/server/server.bat` and double click on the file, a command line window should popup showing the status.
<br>
<br>
Second, go to the `bungee/bungee.bat` folder and run that file as well to start bungeecord. Now your server should be up and running!
## Making Server Public
Next, you need to forward ports  `8081` and `25565` and navigate to your servers public ip `[server-ip:8081]`. The server welcome page should be displayed. Congrats on running your own server!

## Installing Plugins
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
