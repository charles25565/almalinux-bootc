# Better AlmaLinux bootc images

[![CI/CD](https://github.com/charles25565/almalinux-bootc/actions/workflows/ci-cd.yml/badge.svg)](https://github.com/charles25565/almalinux-bootc/actions/workflows/ci-cd.yml)

> [!NOTE]
> These are currently unofficial.

Basically the official AlmaLinux bootc images are outdated and use insecure features of buildah/podman, this repo doesn't have those issues.

## Using

Use the container URL: [`ghcr.io/charles25565/almalinux-bootc`](https://ghcr.io/charles25565/almalinux-bootc)

## Building

1. Checkout the right branch:

```bash
git checkout aX # a9, a10, a10s or whichever version
```

2. Build the image:

```bash
sudo podman build --security-opt=label=disable --cap-add=all --device /dev/fuse -t localhost/almalinux-bootc:latest .
```
