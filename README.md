![Build Push jama_rpython3 v3.6.3](https://github.com/Jamamel/jama_rpython3/workflows/Build%20Push%20jama_rpython3%20v3.6.3/badge.svg)

**Note**: See the Jamamel/jama_r-base repo for more details.


# Using the jamamel/jama_r-base container


## Quickstart

    docker run -it --name r_python3 jamamel/jama_rpython3:3.6.3


## Common configuration options:


### Give the user root permissions (add to sudoers)

    docker run -it -e ROOT=TRUE --name r_python3 jamamel/jama_rpython3:3.6.3.

Link a local volume (in this example, the current working directory, `$(pwd)`) to the rstudio container:

    docker run -it -v $(pwd):/home/rstudio --name r_python3 jamamel/jama_rpython3:3.6.3.


#### Access a root shell for a running `jama_rpython3` container instance

First, determine the name or id of your container (unless you provided a `--name` to `docker run`) using `docker ps`.  You need just enough of the hash id to be unique, e.g. the first 3 letters/numbers.  Then exec into the container for an interactive session:

    docker exec -ti <CONTAINER_ID> bash

You can now perform maintenance operations requiring root behavior such as `apt-get`, adding/removing users, etc.  

