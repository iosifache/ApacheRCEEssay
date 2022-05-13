# Demo

## Steps

1. Build the images and create the Docker Compose architecture: `docker-compose up --force-recreate --build`
2. Check the version of the vulnerable server: `docker exec --interactive --tty server apachectl -v`
3. Enter the attacker's container: `docker exec --interactive --tty attacker /bin/bash`
4. Run the exploit script by providing the DNS record of the vulnerable server (automatically generated when linking the two container) and a command to execute: `/root/exploit.sh server whoami`
5. Exit the container: `exit`
6. Remove the infrastructure: `docker-compose rm -f`

## Recorded Terminal

[![asciicast](https://asciinema.org/a/5rZfBho0OU4xq4bDsHm5UkfRN.svg)](https://asciinema.org/a/5rZfBho0OU4xq4bDsHm5UkfRN)