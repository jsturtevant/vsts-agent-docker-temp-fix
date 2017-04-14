# vsts-agent-docker-temp-fix
Temp fix for https://github.com/Microsoft/vsts-agent-docker/issues/22

To use:

``` docker build -t vsts-agent .```

then start it:

```
docker run \
  -e VSTS_ACCOUNT=<account> \
  -e VSTS_TOKEN=<pat>  \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /var/vsts:/var/vsts \
  -v /vsts/agent/_work:/vsts/agent/_work
  -d microsoft/vsts-agent:ubuntu-16.04-docker-17.03.0-ce-standard
```

It will show up as a registered agent in VSTS
