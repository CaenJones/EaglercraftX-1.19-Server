echo "Starting server..."
java -Dlog4j2.formatMsgNoLookups=true -jar server.jar
pid=$!
‎
while true; do
    if ! kill -0 $pid 2>/dev/null; then
        echo "Detected server in crashed/stopped state!"
        echo "Restarting..."
        java -Xmx4G -jar server.jar
        pid=$!
    fi
    sleep 5 
done
