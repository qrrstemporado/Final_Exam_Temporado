FROM ubuntu
MAINTAINER qrrtemporado <qrrstemporado@tip.edu.ph>

#Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

#Update packages
RUN apt update; apt dist-upgrade -y

#Install Enterprise service
RUN apt install -y apache2 

#Install Monitoring Tool
RUN apt install nagios-plugins 
RUN apt install nagios-nrpe-server
RUN apt install -y nagios4

#Set Entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
