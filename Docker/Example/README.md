# Example
This small app serves the purpose of demonstrating all the contents of the previous lessons.

### server.js
Small server that saves data from requests in the `/data/events.log`.

### data_flush.sh
Small script used to demonstrate the `pre-stop` hook.

## Execution
1. `docker compose build`
2. `docker compose up`

## Requests
1. `curl -s http://localhost:3000`
2. `curl -s http://localhost:3000/test`

## Check Event Logs
1. `docker exec -it compose-hooks-app sh -c 'id && ls -l /data && tail -n +1 /data/events.log || true'`

## Pre-stop hook
1. `docker compose down`

## Check volumes
1. `docker volume ls | grep data`
2. `docker run --rm -v compose-hooks-demo_data:/data node:20-alpine sh -c "ls -lh /data && cat /data/flush.info || true"`
