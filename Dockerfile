FROM withinboredom/agent:v1.0.2
MAINTAINER Sean Payne

ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]
LABEL "io.rancher.container.system"="rancher-agent"
ENV HOST_DOCKER_SOCK /var/run/docker.sock
ENV RANCHER_AGENT_IMAGE rancher/agent:v1.0.2
