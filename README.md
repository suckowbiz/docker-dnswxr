![image](https://img.shields.io/imagelayers/layers/suckowbiz/dnswxr/latest.svg) ![image](https://img.shields.io/imagelayers/image-size/suckowbiz/dnswxr/latest.svg) ![image](https://img.shields.io/docker/pulls/suckowbiz/dnswxr.svg) ![image](https://img.shields.io/github/license/suckowbiz/docker-dnswxr.svg)

# What is it?
A [Dockerfile](http://docs.docker.com/engine/reference/builder/) to serve a REST API to update DNS records at [InterNetworX (inwx)](https://www.inwx.de).

# How do I run it?
 1. Run a container that binds to [default route](https://en.wikipedia.org/wiki/Default_gateway) on port `80` by executing:  
    `docker run -d -p 0.0.0.0:8080:80 suckowbiz/dnswxr`  
 2. Invoke the REST endpoint via (replace placeholders) ```http(s)://<server-ip>:<server-port>/resources/records/a/update/?username=<username>&password=<password>&ip=<ip>&ttl=<time-to-life>&id=<id-of-a-resource-record?id=<id-of-further-a-resource-record>``` to update your records.

Note: This stuff is licensed under MIT to allow doing anything with proper attribution and without warranty.
