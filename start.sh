#!/bin/bash

# Start Python server on port 8081 in background
echo "Starting Python server on port 8081..."
python3 -m http.server 8081 &

# Give it a second to start
sleep 1

# Start Cloudflare tunnel
echo "Starting Cloudflare Tunnel..."
cloudflared tunnel --url http://localhost:8081
