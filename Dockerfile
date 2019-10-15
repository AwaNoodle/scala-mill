#
# Scala and Mill Dockerfile
#
# Forked from https://github.com/nightscape/scala-mill
#

FROM openjdk:8u222-stretch
LABEL maintainer=https://github.com/awanoodle
LABEL source=https://github.com/nightscape/scala-mill

ARG scala_version=2.12.10
ARG mill_version=0.5.1

WORKDIR /root

# Install Scala
## Piping curl directly in tar
RUN \
  curl -fsL https://downloads.typesafe.com/scala/${scala_version}/scala-${scala_version}.tgz | tar xfz - -C /root/ && \
  echo >> /root/.bashrc && \
  echo "export PATH=~/scala-${scala_version}/bin:${PATH}" >> /root/.bashrc

# Install mill
RUN \
  curl -L -o /usr/local/bin/mill https://github.com/lihaoyi/mill/releases/download/${mill_version}/${mill_version} && \
  chmod +x /usr/local/bin/mill && \
  touch build.sc && \
  mill -i resolve _ && \
  rm build.sc

