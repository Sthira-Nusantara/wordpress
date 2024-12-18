#!/bin/sh

script_dir=$(dirname "$(readlink -f "$0")")

docker compose -f "$script_dir/docker-compose.yaml" -p wp down
