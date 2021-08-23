#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::4}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}simpler-fortune-cookie-app-backend:latest" -t "${DockerRepo}simpler-fortune-cookie-app-backend:1.0-$Tag" backend/
