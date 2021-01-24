# Docker-Nachos

Nachos Compile & Run Environment in Docker, based on `i386/ubuntu:bionic`.

## Build

### Basic

```bash
docker buildx build -t nachos .
```

### Mirror

```bash
docker buildx build -t nachos --build-arg DOCKER_MIRROR=true .
```

### Shell

#### Bash shell (default)

```bash
docker buildx build -t nachos --build-arg DOCKER_SHELL=bash .
```

#### Fish shell

```bash
docker buildx build -t nachos --build-arg DOCKER_SHELL=fish .
```

#### Zsh shell (with oh-my-zsh)

```bash
docker buildx build -t nachos --build-arg DOCKER_SHELL=zsh .
```

### Upstream

```bash
docker buildx build -t nachos --build-arg UPSTREAM_IMAGE=i386/ubuntu:latest .
```

## Run

```bash
docker run --rm -v $(pwd):/workspace -it nachos
```
