#!/bin/sh

# start the container stack
docker compose up --build -d
# Non plugin version:
# docker-compose up -d


# wait for the service to be ready
while ! curl --silent --output /dev/null http://127.0.0.1:8888/lab; do
  echo -n "."
  sleep 1
done

# open the browser window
xdg-open http://127.0.0.1:8888/lab