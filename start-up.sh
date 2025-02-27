#!/bin/bash

cd /opt/stacks/pi-hole
docker compose up -d

cd /opt/stacks/homepage
docker compose up -d

cd /opt/stacks/jenkins
docker compose up -d

cd /opt/stacks/stirling
docker compose up -d

#Other services here
