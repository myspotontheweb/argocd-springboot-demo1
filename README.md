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

# Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/3.0.6/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/3.0.6/maven-plugin/reference/html/#build-image)
* [Caching Maven Dependencies with Docker](https://www.baeldung.com/ops/docker-cache-maven-dependencies)
