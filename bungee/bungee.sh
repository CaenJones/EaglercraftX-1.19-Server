echo "Starting server..."
java -Dlog4j2.formatMsgNoLookups=true -Xms4G -Xmx4G -jar bungee.jar &
pid=$!
‎
while true; do
    if ! kill -0 $pid 2>/dev/null; then
        echo "Detected server in crashed/stopped state!"
        echo "Restarting..."
        java -Dlog4j2.formatMsgNoLookups=true -Xms4G -Xmx4G -jar bungee.jar &
        pid=$!
    fi
    sleep 5 
done
