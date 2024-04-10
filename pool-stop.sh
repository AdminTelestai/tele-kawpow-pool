#!/bin/bash
echo "Stopping pool..."
echo ""

sudo screen -S pool -X kill

echo ""
echo "Successful!"

exit 0
