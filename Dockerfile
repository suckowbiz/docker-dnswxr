## These instructions serve the purpose to run dsnwxer app.
FROM java:openjdk-8-jdk
MAINTAINER Tobias Suckow <tobias@suckow.biz>

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true \
    KEY_SERVER=hkp://keyserver.ubuntu.com:80

RUN apt-get update --quiet && apt-get install --quiet --yes --no-install-recommends \
    wget \
 && apt-get clean --quiet \
 && apt-get autoremove --quiet \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN wget https://github.com/suckowbiz/dnswxr/releases/download/v1.0.0/dnswxr-swarm.tar.gz -O dnswxr.tar.gz --no-check-certificate --no-verbose \
 && wget https://github.com/suckowbiz/dnswxr/releases/download/v1.0.0/dnswxr-swarm.tar.gz.asc -O dnswxr.tar.gz.asc --no-check-certificate --no-verbose \
 && gpg --keyserver $KEY_SERVER --recv-keys 3D2EDA0D \
 && gpg --verify dnswxr.tar.gz.asc dnswxr.tar.gz \
 && tar -xf dnswxr.tar.gz \
 && rm -rf dnswxr.tar.gz 

EXPOSE 8080
CMD ["java","-jar","/opt/dnswxr-swarm.jar"]
