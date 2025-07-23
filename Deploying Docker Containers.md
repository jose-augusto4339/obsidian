### Inproduction
- Isolated, standalone environment
- Reproducible enviromnment, easy to share and use
- No surprises!
	- What works on your machine (in a container) will also work after deployment

## Development to Production: Things To Watch Out For

- Bind Mounts shouldn't be used in Production!
- Containerized apps might need a build step
- Multi-Container projects might need to be split (or should be split) across multiple hosts / remote machines
- Trade off between control and responsibility might be worth it!

## Bind Mounts, Volumes & COPY

- In Development
	- Containers should encapsulate the runtime enviornment but not necessarily the code
	- User "Bind Mounts" to provide your local host project files to the running container
	- Allows for instant updates without restarting the contianer
- In Production
	- A container should really work standalone, you should NOT have source code on your remote machine
		- Image/ Container is the "single source of truth"
- Use COPY to copy a code snapshot into the image

### Docker images Hosting Providers

There are hundreds and thousands of Docker-supporting hosting providers out there!
Ex:
- AWD
- Azure
- GCP

### Example: Deploy to AWS EC2

AWC EC2 is a service that allows you to spin up and manage your own remote machines

1. Create and launch EC2 instance, VPC and security group
2. Configure security group to expose all required port to WWW
3. Connect to instance (SSH), install Docker and run container
