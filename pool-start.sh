#!/bin/sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

echo "Starting pool..."
echo ""

sudo setcap 'cap_net_bind_service=+ep' ~/.nvm/versions/node/v8.1.4/bin/node

sudo screen -S pool -d -m ~/.nvm/versions/node/v8.1.4/bin/node init.js

sudo renice -n -18 -p $(pidof node)
sudo renice -n -18 -p $(pidof nodejs)

echo ""
echo "Successful!"

exit 0
