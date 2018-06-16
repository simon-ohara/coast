# Coast CLI

Coast is a development workflow utility based on [Docker](https://www.docker.com/). The premise is that each project is developed within its own isolated environment, but feels like development on the native system. This allows installation and exploration of different technologies without polluting the main environment.

The environments are Docker containers that are built and accessed on demand when the project is being worked on. The version controlled source is stored on the host system and is mounted into the container so that they can be edited and executed as needed.

## Installation

Coast is dependant on the host system running Docker and will throw errors if it is used without it. If using the install script then it will also fail if Docker is not installed.

```
wget -qO- https://raw.github.com/simon-ohara/coast/master/bin/install | bash
```

## Usage

### Start a terminal session in a container

From within a project directory it is possible to quickly bring up and get a terminal running inside an isolated environment using a Docker image. There is no need for a Dockerfile if all that is needed is the project source code from the ost and the resources of the named Docker image.

```
coast session from <image-name>
```

### Use a Dockerfile

```
coast session
```

* coast > commands that use docker in a restricted way
* coast-env > environment based on a ubuntu docker image
* coast-js > js dev environment based on coast-env docker image

Install:

```
wget -qO- https://raw.github.com/simon-ohara/coast/master/install | bash
```
