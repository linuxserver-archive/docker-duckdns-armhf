FROM lsiobase/alpine.armhf:3.8

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="aptalca"

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
	curl

# add local files
COPY root/ /
