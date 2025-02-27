#!/bin/bash

cd /opt/stacks/pi-hole
docker compose down

cd /opt/stacks/homepage
docker compose down

cd /opt/stacks/jenkins
docker compose down

cd /opt/stacks/stirling
docker compose down

#Other services here
