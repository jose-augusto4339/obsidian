## Database runnig on a docker container 
Two points of atention:
- Data must persist
- Access should be limited
### Adding Data Persistence to DB with Volumes
On the "docker run" command use de -v flag

Use the docker image documentation of the SGBD to discover the files that need to be mounted to persist de data.
Ex
docker run -v [ my/own/ | vulme-name ]:/data/db

### Security
The docker image documentation of the SGBD usually has a Authentication section

## Source code running on a docker container
Two points of attention
- Some data must persist
- Live source code update
### Data persistence
To persist data created by the application insido a docker container its recommended to create a named volume
Ex: docker run -v volume-name:/app/data/path

### Live source code update
To ensure that whenever you chance something on your source code the changes are reflected inside the container its recommended to usa a bind mount

Ex: docker run -v full/path/code:/app/

Obs:. Ensure that some files dont be overrinten its important to protect those using anonimous volumes

Its important to garantee that after copy the code inside the container the code is rebuild. Some additional configurations probably will be required







