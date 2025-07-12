We have basicaly tree communication cases of an application inside of a Docker container:
- Container to WWW Communication
- Container to Local Host Machine Communication
- Contianer to Container Communication
## Communicating to the web (WWW)

Send requists from inside a container to a www url just works wothout any special settings!!

## Communicating to the Local Hosts Machine

Use **host.docker.internal** anywhere that need to use a URL to the localhost

## Communicating container to container

Fist, we can run **docker container inspect** command to inspect the container that you want to communicate, then localize the IPAddress that the value is the ip address the is used to connect to this container.

OBS:. Not the ideal approach

## Creating Container Networks

docker network create my_network

docker run --network my_network

Within a Docker network, all containers can communicate with each other and IPs are automatically resolved

Now to conect to other container we can use tha name of the container instead of the IP address

## Docker Network Drivers

Docker Networks actually support different kinds of "**Drivers**" which influence the behavior of the Network.

The default driver is the "**bridge**" driver - it provides the behavior shown in this module (i.e. Containers can find each other by name if they are in the same Network).

The driver can be set when a Network is created, simply by adding the `--driver` option.

1. docker network create --driver bridge my-net

_Of course, if you want to use the "bridge" driver, you can simply omit the entire option since "bridge" is the default anyways._

Docker also supports these alternative drivers - though you will use the "bridge" driver in most cases:

- **host**: For standalone containers, isolation between container and host system is removed (i.e. they share localhost as a network)
    
- **overlay**: Multiple Docker daemons (i.e. Docker running on different machines) are able to connect with each other. Only works in "Swarm" mode which is a dated / almost deprecated way of connecting multiple containers
    
- **macvlan**: You can set a custom MAC address to a container - this address can then be used for communication with that container
    
- **none**: All networking is disabled.
    
- **Third-party plugins**: You can install third-party plugins which then may add all kinds of behaviors and functionalities
    

As mentioned, the "**bridge**" driver makes most sense in the vast majority of scenarios.

