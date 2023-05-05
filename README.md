# springboot-demo1

Spring Boot demo application generated using the [Spring Initializr](https://start.spring.io/)

# Getting Started

## Software

Install Docker

* https://docs.docker.com/engine/install/ubuntu/

Using [Arkade](https://arkade.dev/) install additional dependencies

```
ark get kubectl helm buildx devspace k3d yq 
```

## Start cluster

```
k3d cluster create demo1
```

## Build and Deploy

```
devspace use namespace dev-01
devspace deploy
```

## Cleanup

```
devspace purge
k3d cluster delete demo1
```

# Install using Helm

This repository pushes both a docker image and an associoated helm chart to Github packages. This enables the software to be installed as follows:

```
helm upgrade demo1 --install oci://ghcr.io/myspotontheweb/spring-boot-demo1/charts/demo1 --version 1.0.1 --namespace demo1 --create-namespace
```

# Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/3.0.6/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/3.0.6/maven-plugin/reference/html/#build-image)
* [Caching Maven Dependencies with Docker](https://www.baeldung.com/ops/docker-cache-maven-dependencies)
* [Devspace](https://www.devspace.sh/)
