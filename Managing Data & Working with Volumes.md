When working with Docker we need to think in **data** like tree different kinks of data. Application data, Temporary App data, Pemanent App data.

## Application data
- Write and improved by the developer
- Added to image and container in build phase
- Fixed: Cant be changed once image is built
- **Read-only**, hence stored in Images
## Temporary data
- Fetched/ Produced in running container
- Stored in memory or temporary files
- Dynamic and changing, but cleared regularly
- **Read + write**, temporary, hence stored in Container
## Permanent App Data
- Fetched/ Produced in running container
- Stored in files or a database
- Must not be lost if container stops/ restarts
- **Read + write**, permanent, stored with **Containers & Volumes**


When working with Docker, application data are stored in the images and its read-only. When we stop, remove and rebuild a container, the new container will have all thats defined at the Dockerfile and nothing more.

Files created during the execution of an application running inside a Docker container are temporary data then if we stop, remove and rebuild a new container with the same image all the files created by the application before will be lost

The solution for this problem is **Volumes**

## Volumes

Volumes are folder on the **host machine** which are mounted("made availeble", mapped) into containers

Volumes persist if a container shut down. Id a container (re-)starts and mounts a volume, any data inside of that volume is available in the container.

A container can write data into a volume and read data from it.
### Two types of external data storages

- Volumes (Managed by Docker) -> Docker sets up a folder/ path on your host machine, exact location is unknown to you. (Managed  by docker volume command)
	- Anonymous volumes -> Exists as long as our container exists
		- Add at our Dockerfile VOLUME ["/path/inside/container"]
	- Named volumes-> Will survive even if our contianer shout down but which we dont need to edit dorectly
		- Add the tag "v" on the docker run command: -v <volume-name>:/path/inside/container

- Bind Mounts (Managed by you) 
	To add a Bind Mount we need to define it on out "docker run" command and refer the absolute path of our application on the host machine to the path of our source code inside of the container
			Ex: docker run... -v "/source/code/absolute/path:/path" ...
	Obs:. We can use anonymous volumes to prioritize container-internal paths highter than external paths.
		To make a Bind Mount be read-only just put ro at the end
			Ex: docker run... -v "/source/code/absolute/path:/path:ro" ...


## Working with Environment Variables & ".env" Files

Docker suports build-time ARGuments and runtime ENVironment variables

- ARG
	- Available inside of Dockerfile, NOT accessible in CMD or any application code
	- Set on image build (docker build) via --build-arg
- ENV
	- Available inside of Dockerfile & in application code
	- Set via ENV in Dockerfile or via --env on docker run