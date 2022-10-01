#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

sudo docker build . -t catalina
yes | sudo docker image prune || true
sudo docker rm catalina || true
sudo docker run --net=host --name=catalina catalina &

kill-catalina () {
    echo 'Killing container...'
    sudo docker stop catalina
}

# await signal
trap "kill-catalina; exit" SIGINT
while true; do
    cat > /dev/null
done
