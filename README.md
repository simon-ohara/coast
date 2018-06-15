# Coast CLI

Coast is a development workflow utility based on [Docker](https://www.docker.com/). The premise is that each project is developed within its own isolated environment with the project source accessed from the host system. This allows installation and exploration of different technologies without polluting the host environment.

The environments are Docker containers that are built and accessed on demand when the project is being worked on. The version controlled source is stored on the host system and is mounted into the container so that they can be edited and executed as needed.

## Workflow

1. Clone or initialise a github repo on the host system.
1. Change the current working directory to the repo.
1. Run `coast session from oharasi/coast-base`

The `oharasi/coast-base` image can be interchanged for any docker image, but this one is geared towards this workflow as it mounts the project directory into the root of the containers file system and starts the terminal session from there. View the image [Dockerfile](https://github.com/simon-ohara/coast-base/blob/master/Dockerfile) for a list of the available features.

For any specific customisations on top of this, like installing `node` or `nginx` it will be necessary to create a Dockerfile within the project itself. As a side note, `coast-node` is a container image set up for JavaScript development that is also based on `coast-base` which may be worth exploring if that is what you require. Its [Dockerfile](https://github.com/simon-ohara/coast-node/blob/master/Dockerfile) describes how this is done.

If a Dockerfile is included in the root of the project it is possible to just run `coast session` and the Dockerfile will be used as the base to create and run the container.

## Installation

Coast is dependant on the host system running Docker and will throw errors if it is used without it. If using the install script then it will also fail if Docker is not installed.

```
wget -qO- https://raw.github.com/simon-ohara/coast/master/install | bash
```

