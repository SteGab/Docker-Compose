# Run Container
`podman run --rm --replace -it --name opencode -v ./:/home/dev/projects  localhost/opencode:latest`

- The container is started in interactive mode.
- The current directory is mounted under /home/dev/projects
- An existing container will be replaced.
- After exiting the container, it will be removed.

## Linux: Use current directory
`podman run --rm --replace -it --name opencode -v $(pwd):/home/dev/projects:Z  localhost/opencode:latest`

- The :Z at the end of the volume mount prevents from "permission denied" when trying to access. The ":Z" restricts share to a single container.

