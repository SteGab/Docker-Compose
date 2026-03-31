# Build image
`podman build -t openclaw:latest .`

# Run Container
`podman run --rm --replace -it --name openclaw -v ./:/home/dev/projects  localhost/openclaw:latest`

- The container is started in interactive mode.
- The current directory is mounted under /home/dev/projects
- An existing container will be replaced.
- After exiting the container, it will be removed.

Keep the Container after exit

`podman run -it --name openclaw -v ./:/home/dev/projects  localhost/openclaw:latest`

## Linux: Use current directory
`podman run --rm --replace -it --name openclaw -v $(pwd):/home/dev/projects:Z  localhost/openclaw:latest`

Keep the Container after exit

`podman run -it --name openclaw -v $(pwd):/home/dev/projects:Z  localhost/openclaw:latest`

- The :Z at the end of the volume mount prevents from "permission denied" when trying to access. The ":Z" restricts share to a single container.

# Init Openclaw
`openclaw onboard`