## Overview

This repository lays out a reproducible environment for adding continuous integration (CI) to hardware block packages. It also allows for easy setup of the new Wit/Wake/DUH workflow by packaging the required dependencies into publically available Docker images.  

## Docker Images

There are two Docker images necessary to run the new workflow, available on Docker Hub. 

The first, the Wit Docker image (corresponding to `wit.Dockerfile`), is housed in the [sifive/wit repository](https://github.com/sifive/wit). It contains the dependencies needed to initialize a workspace using Wit. 

The second, the environment-blockci Docker image (corresponding to `environment-blockci.Dockerfile`), is housed in this repository. After a workspace is initialized using the Wit Docker image, the environment-blockci Docker image can be used to onboard an IP block with this workflow. 

## Environment Package 

This repository also serves as an environment package for the workflow (see `environment.json`, `environment.wake`). Running `wit add-pkg git@github:sifive/environment-blockci-sifive.git` will configure a runner that allows Wake to access the protobuf compiler, Verilator, and the RISC-V toolchain. 

Additional dependencies needed for Wake commands can be configured in the environment.json file.

## Implementing CI

The Docker images and environment package contained in this repo can be used to add CI to hardware block packages. 

At a high level, the process works as follows:

1. Use the Wit Docker image to initialize a workspace containing the repository being tested and an environment package (i.e. environment-blockci-sifive).

2. Use the environment-blockci Docker image to run the wake build rules to test the functionality of the block.

Note: There is not a mechanism to add additional packages to the Docker image yet.

## Updating the Docker Images

Commits to the `environment-blockci-sifive` or `wit` Git repository trigger a Travis build that rebuilds the Docker image housed in the respective repo. Versioned releases are pushed to Docker Hub with the specified tag.
