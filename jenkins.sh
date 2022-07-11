#!/bin/bash

docker stop jenkins
ping -c3 127.0.0.1
docker ps -a | grep jenkins | docker rm $(awk '{print $1}')
ping -c3 127.0.0.1 
docker run --detach --publish 8080:8080 --volume jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts

#docker pull jenkins/jenkins:lts
#docker run --detach --publish 8080:8080 --volume jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts
#docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
