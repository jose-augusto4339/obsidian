## Automating Multi-Container Setups

Docker compose is a tool that alows you to replace docker build and docker run commands
with just one configuration file (One Configuration File + Orchestration Commands)

Docker compose does not replace Dockerfile for custom images 

Docker compose does not replace Images or Containers

Docker compose is NOT suited managing multiple containers on different hosts 

## Writing Docker Compose Files

- Services (Containers)
	- Publiched Ports
	- Enviroment Variables
	- Volumes
	- Networks
	- ...
Create a docker-compose.yaml file

version: "3.8" --version of the docker compose especification
services:
		<container-name>:
				image: '<image-name>'
				volumes:
						-<volume-name>
						-<volume-name>:/path/container
						-host/machine/path:/container/path
				enviroment:
						VARIABLE_NAME: value
						- VARIABLE_NAME=value (two possible sintax)
						env_file:
								- /path/env/variable/file (sintax env file)
				networks (not necessery, docker compose also create a network including the services specified in the compose file)
						- <network-name>
		<container-name>:
				build: /path/to/Dockerfile
				or
				build:
						context: /path/to/folder/holds/Dockerfile
						dockerfile: <dockerfile-name> (if its diferent to Dockerfile)
						args:
								some-arg:some-value
				ports:
						- '80:80'
						- port_number_host:port_number
				depends_on:
						- <other-service-name> (used to express order of initialization of services inside this docker-compose)
		...
				
		<container-name>:
				...
				stdin_open: true
				tty: true
				...
volumes:
		<volume-name>: (docker compose require this at the same level of services for any named volumes, docker needs that to be aware of the named valumes that needed to be create, anonimous volumes and bind mounts dont have to be specified here)

To start services with docker compose

docker-compose up

To stop and delete all containers and images created in the docker-compose up command:

docker-compose down

Obs:. docker-compose down dont delete the volumes created. To do so:

docker-compose down -v
				
		