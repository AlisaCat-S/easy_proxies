#!/bin/bash
# Ensure config files are writable for WebUI settings
touch config.yaml nodes.txt alive_nodes.txt 2>/dev/null
chmod 666 config.yaml nodes.txt alive_nodes.txt 2>/dev/null || true
docker compose pull && docker compose down && docker compose up -d
