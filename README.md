# ten_actions_runner

## setup a new runner

```
# start a new runner container
docker run -d --restart=always --privileged --security-opt seccomp=unconfined --security-opt apparmor=unconfined --entrypoint sleep ghcr.io/ten-framework/ten_actions_runner:0.1.0 infinity

# init
docker exec -it <CONTAINER_ID> bash
sudo service docker start
docker run --rm hello-world

# config
./config.sh --url https://github.com/TEN-framework --token <YOUR_RUNNER_TOKEN>

# run
nohup ./run.sh &
```

