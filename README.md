# ten_actions_runner

## setup a new runner


- start a new container
```bash
docker run -d --restart=always \
  --privileged --security-opt seccomp=unconfined --security-opt apparmor=unconfined \
  --name <runner_name> --hostname <runner_name> \
  ghcr.io/ten-framework/ten_actions_runner:0.1.1
```

- init
```bash
# login
docker exec -it <CONTAINER_ID> bash

# start docker
sudo service docker start

# verify docker
docker run --rm hello-world
```

- config

```bash
./config.sh --url https://github.com/TEN-framework --token <YOUR_RUNNER_TOKEN>
```

- run

```bash
nohup ./run.sh &
```

