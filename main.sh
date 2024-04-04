#!/bin/bash
# ~~~ EaglercraftX Server
# ~~~ >> smashed together once again by ayunami2000
# ~~~ >> modified by WinRAR

unset DISPLAY

echo "set -g mouse on" > ~/.tmux.conf

tmux kill-session -t server
tmux kill-session -t placeholder

BASEDIR="$PWD"

FORCE1="nah"

JAVA11="$(command -v javac)"
JAVA11="${JAVA11%?}"

export GIT_TERMINAL_PROMPT=0

if [ ! -d "eaglercraftx" ]; then
  rm client_version
  rm gateway_version
  FORCE1="bruh"
fi

if ! grep -q "eula=true" "eula.txt"; then
  rm eula.txt
  java -jar LicensePrompt.jar
  echo "eula=true" > eula.txt
fi
# ~~~

# reset stuff
if grep -q "reset=true" "reset.txt"; then
  rm base.repl
  rm -rf server/world
  rm -rf server/world_nether
  rm -rf server/world_the_end
  rm -rf server/logs
  rm -rf server/plugins/PluginMetrics
  rm -f server/usercache.json
  rm -rf cuberite
  rm -rf bungee/logs
  rm -f bungee/eaglercraft_skins_cache.db
  rm -f bungee/eaglercraft_auths.db
  sed -i '/^stats: /d' bungee/config.yml
  sed -i "s/^server_uuid: .*\$/server_uuid: $(cat /proc/sys/kernel/random/uuid)/" bungee/plugins/EaglercraftXBungee/settings.yml
  rm -f /tmp/mcp918.zip
  rm -f /tmp/1.8.8.jar
  rm -f /tmp/1.8.json
  chmod +x selsrv.sh
  ./selsrv.sh
fi

rm -rf /tmp/##EAGLER.TEMP##
rm -rf /tmp/teavm
rm -rf /tmp/output

mkdir -p bungee/plugins
mkdir eaglercraftx
mkdir web

cd eaglercraftx
git remote update
LOCALHASH=$(git rev-parse @{0})
REMOTEHASH=$(git rev-parse @{u})
if [ "$LOCALHASH" != "$REMOTEHASH" ] || [ $FORCE1 == "bruh" ]; then
  cd ..
  rm -rf eaglercraftx
  git clone https://github.com/WINRARisyou/EaglercraftX eaglercraftx --depth 1
  mkdir eaglercraftx
  cd eaglercraftx
fi
if [ -f "client_version" ] && [ -f "gateway_version" ]; then
  if ! cmp -s "../client_version" "client_version"; then
    rm ../client_version
    cp client_version ../client_version
    rm ../buildconf.json
    sed "s#BASEDIR#$BASEDIR#" ../buildconf_template.json > ../buildconf.json
    if [ ! -f /tmp/mcp918.zip ]; then
      wget -O /tmp/mcp918.zip http://www.modcoderpack.com/files/mcp918.zip
    fi
    if [ ! -f /tmp/1.8.8.jar ]; then
      wget -O /tmp/1.8.8.jar https://launcher.mojang.com/v1/objects/0983f08be6a4e624f5d85689d1aca869ed99c738/client.jar
    fi
    if [ ! -f /tmp/1.8.json ]; then
      wget -O /tmp/1.8.json https://launchermeta.mojang.com/v1/packages/f6ad102bcaa53b1a58358f16e376d548d44933ec/1.8.json
    fi
    cd ..
    tmux new -d -s placeholder "java -Xmx128M PlaceHTTPer 8080 Compiling the latest client.... Please wait!"
    cd eaglercraftx
    "$JAVA11" -Xmx512M -cp "buildtools/BuildTools.jar" net.lax1dude.eaglercraft.v1_8.buildtools.gui.headless.CompileLatestClientHeadless -y ../buildconf.json
    retVal=$?
    tmux kill-session -t placeholder
    rm -rf /tmp/##EAGLER.TEMP##
    rm -rf /tmp/teavm
    if [ $retVal -eq 0 ]; then
      cp -r /tmp/output/* ../web/
    fi
    rm -rf /tmp/output
  fi
  if ! cmp -s "../gateway_version" "gateway_version"; then
    rm ../gateway_version
    cp gateway_version ../gateway_version
    if [ -f "gateway/EaglercraftXBungee/EaglerXBungee-Latest.jar" ]; then
      rm ../bungee/plugins/EaglercraftXBungee.jar
      cp gateway/EaglercraftXBungee/EaglerXBungee-Latest.jar ../bungee/plugins/EaglercraftXBungee.jar
    fi
  fi
fi

# update waterfall!!
cd ../bungee
rm bungee-new.jar
WF_VERSION="`curl -s \"https://papermc.io/api/v2/projects/waterfall\" | jq -r \".version_groups[-1]\"`"
WF_BUILDS="`curl -s \"https://papermc.io/api/v2/projects/waterfall/versions/$WF_VERSION/builds\"`"
WF_SHA256="`echo $WF_BUILDS | jq -r \".builds[-1].downloads.application.sha256\"`"
echo "$WF_SHA256 bungee.jar" | sha256sum --check
retVal=$?
if [ $retVal -ne 0 ]; then
  wget -O bungee-new.jar "`echo $WF_BUILDS | jq -r \".builds[-1]|\\\"https://papermc.io/api/v2/projects/waterfall/versions/$WF_VERSION/builds/\\\"+(.build|tostring)+\\\"/downloads/\\\"+.downloads.application.name\"`"
  if [ -f "bungee-new.jar" ]; then
    rm bungee.jar
    mv bungee-new.jar bungee.jar
  fi
fi
cd ..

# run it!!
cd bungee
tmux new -d -s server "java -Xmx128M -jar bungee.jar; tmux kill-session -t server"
cd ../server
if [ ! -f "server.jar" ] && [ -d "../cuberite" ]; then
  cd ../cuberite
  tmux splitw -t server -v "BIND_ADDR=127.0.0.1 LD_PRELOAD=../bindmod.so ./Cuberite; tmux kill-session -t server"
else
  tmux splitw -t server -v "java -Djline.terminal=jline.UnsupportedTerminal -Xmx512M -jar server.jar nogui; tmux kill-session -t server"
fi
cd ..
while tmux has-session -t server
do
  tmux a -t server
done

echo 'you might need to agree to the EULA in the server folder'
