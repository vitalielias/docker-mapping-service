# Dockerized Mapping Service

This repository contains a Dockerized version of the [KIT Data Manager Mapping Service](https://github.com/kit-data-manager/mapping-service/), allowing for easy deployment and local processing of files without the need for a network connection. This is particularly useful for handling large files where network transfer can become a bottleneck.

## Overview

The Mapping Service is a tool designed to map various data formats. While the service is [available online](https://matwerk.datamanager.kit.edu/mapping-service-ui.html), the Dockerized version in this repository enables local processing, thus eliminating the dependency on network speeds, which was one of the major bottlenecks.

## Getting Started

To use this Dockerized service, you will need to have Docker and Docker Compose installed on your system. Please refer to the [official Docker documentation](https://docs.docker.com/get-docker/) for installation instructions.

### Installation

1. Clone this repository to your local machine.
   ```sh
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. Build and run the containers using Docker Compose.
   ```sh
   docker-compose up --build
   ```

This will start the backend service, initializer, and frontend containers. The initializer container will wait for the backend service to be fully operational before executing its initialization sequence.

### Usage

Once the containers are up and running, you can access the Mapping Service UI through your web browser by navigating to:

```
http://localhost
```

This will load the frontend interface, which interacts with the backend mapping service running locally on your machine.
