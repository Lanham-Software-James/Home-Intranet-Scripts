#!/bin/bash

cd /opt/stacks/pi-hole
docker compose down && docker compose up -d

cd /opt/stacks/homepage
docker compose down && docker compose up -d

cd /opt/stacks/jenkins
docker compose down && docker compose up -d

#Other services here
