# Run Container
`podman run --rm --replace -it --name opencode -v ./:/home/dev/projects  localhost/opencode:latest`
- The container is started in interactive mode.
- The current directory is mounted under /home/dev/projects
- An existing container will be replaced.
- After exiting the container, it will be removed.

