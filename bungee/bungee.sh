echo "Starting Bungee..."
java -jar bungee.jar
pid=$!
‎
while true; do
    if ! kill -0 $pid 2>/dev/null; then
        echo "Detected Bungeecord in crashed/stopped state!"
        echo "Restarting..."
        java -jar bungee.jar
        pid=$!
    fi
    sleep 5 
done
