#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::4}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}simpler-fortune-cookie-app-frontend:latest" -t "${DockerRepo}simpler-fortune-cookie-app-frontend:1.0-$Tag" frontend/
