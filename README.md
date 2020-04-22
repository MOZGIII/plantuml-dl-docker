# plantuml-dl-docker

A docker image to download and run PlantUML.

Available at:

- [Docker Hub](https://hub.docker.com/repository/docker/mozgiii/plantuml-dl).
- [Github Container Registry](pkgs/container/plantuml-dl-docker).

## Usage

```shell
docker run --rm -v "$(pwd):/data" mozgiii/plantuml-dl:latest plantuml -tpng /data/file.pu
```

```shell
docker run --rm -v "$(pwd):/data" ghcr.io/mozgiii/plantuml-dl-docker:latest plantuml -tpng /data/file.pu
```
