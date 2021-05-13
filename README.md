# [RedSerenity] Alpine Linux + S6 Overlay
#### Container Image for Alpine Linux + S6 Init System

---

![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/RedSerenity/alpine-s6-docker?label=Version&style=for-the-badge)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/RedSerenity/alpine-s6-docker/DockerBuildPush?label=Docker%20Build&style=for-the-badge)
![Docker Stars](https://img.shields.io/docker/stars/redserenity/alpine-s6?style=for-the-badge)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/redserenity/alpine-s6?sort=date&style=for-the-badge)


This image serves as the base image for containers that need an init system to launch multiple processes and pass the proper signals when interacting with the container.

Based on [Alpine Linux](https://hub.docker.com/_/alpine) with the [s6-overlay](https://github.com/just-containers/s6-overlay) on it.
