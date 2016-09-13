FROM withinboredom/agent:v1.0.2
MAINTAINER Sean Payne

ADD run.sh /run.sh

RUN cp -v /usr/bin/nsenter /var/lib/cattle/bin/nsenter

ENTRYPOINT ["/run.sh"]
LABEL "io.rancher.container.system"="rancher-agent"
ENV HOST_DOCKER_SOCK /var/run/docker.sock
ENV RANCHER_AGENT_IMAGE rancher/agent:v1.0.2
