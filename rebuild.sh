#!/bin/sh

git switch master
git pull
docker compose up --build -d
